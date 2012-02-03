function setupTest( target, event, dataToPaste, externalPassCondition ){
	var logNode=document.getElementsByTagName('p')[0].firstChild;
  logNode.data='';
	if( typeof target==='string' ){
		if( target.indexOf('.')>-1 ){ // for example "myElementID.firstChild"
			var tmp=target.split('.');
			target=document.getElementById(tmp[0])[tmp[1]];
		}else{
			target=document.getElementById(target);
		}
	}
	/*  */
	if( target.addEventListener ){
		target.addEventListener(event, intermediateListener, false);
	}else if(target.attachEvent){
    target.attachEvent('on'+event, intermediateListener);
  }
	if( dataToPaste || event==='paste' ){
		logNode.data+='Please place the following text on the clipboard before continuing the test: "'+(dataToPaste || 'clipboard text' )+'"\n';
    logNode.parentNode.style.whiteSpace='pre';
	}
	if(typeof triggerTestManually==='function'){
		logNode.parentNode.appendChild(document.createTextNode('  '));
		var btn=logNode.parentNode.appendChild(document.createElement('button'))
		btn.type='button';
		btn.onclick=function(){
			triggerTestManually();
			btn.parentNode.removeChild(btn);
		}
		btn.appendChild(document.createTextNode(' Click here to run test: '));
	}else{
		logNode.data+='Test in progress, waiting for '+event+' event';
	} 
	if(typeof onTestSetupReady==='function'){
		onTestSetupReady();
	}

	function intermediateListener(e){
		e=e||window.event;
    if(!e.target)e.target=e.srcElement;
    if(typeof window.clipboardData != 'undefined' && typeof e.clipboardData=='undefined' )e.clipboardData=window.clipboardData;
		try{
			var testResult=test(e);
			result(testResult);
		}catch(e){
			result('exception: '+e);
		}
	}
  /* if @autofocus isn't supported.. */
  if( document.getElementsByTagName('input').length >1 && document.activeElement == document.body  ){
    for(var inp, i=0, inputs=document.getElementsByTagName('input');inp=inputs[i];i++){
      if(inp.hasAttribute('autofocus'))inp.focus();
    }
  }
}

function result(testResult, msg){
	var logNode=document.getElementsByTagName('p')[0].firstChild;
	if( testResult === true || testResult === false ){
		logNode.data= testResult ? 'PASSED' : 'FAILED';
	}else if( typeof testResult ==='string' ){
		logNode.data=testResult;
	}else if( typeof externalPassCondition==='string' ){
		logNode.data='\nThis test passes if this text is now on the system clipboard: "'+externalPassCondition+'"';
	}
  if( msg )logNode.data+='\n'+msg;
	/* another return value - or no return - from test() indicates that it is asyncronous and will call testResult() from a timeout or something */

}
