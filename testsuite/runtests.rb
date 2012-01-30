require 'rubygems'
begin 
  require "operawatir/helper"
rescue 
  # Not testing Opera? Please fix this script to handle whatever .*Watir you're using  ;-)
end
begin
  require 'clipboard'
  $has_native_clipboard = true
rescue LoadError
  $has_native_clipboard = false
end

 # 	The source of this spec contains a number of tests for extraction. Here are some requirements for the test framework:
 # 		framework will then focus suitable element and trigger relevant event. For paste, data will be given in 'paste data:' comment.
 # 		(If there is no "paste data:" instruction, the framework shall clear the clipboard before each test is run)
 # 		for cut/copy, framework will select element contents before triggering command
 # 		if test function returns undefined, the test is async and will call a result() method the framework must define with pass/fail
 # 		An "External pass condition - clipboard data:" comment indicates that the pass/fail result of the test can not be checked from JavaScript, and the framework must check if the expected data is on the clipboard to know if the test passed or failed
 # 		If the test code defines triggerTestManually() the tester or framework needs to do specific actions before the test runs.
 # 		If the test code defines onTestSetupReady() it must be called after event listeners were defined to trigger the actual test
 # 


  require 'testlist.rb'

def doSingleTest( counter )  
  clearClipboard
  fn=counter.to_s.rjust( 3, '0' ) 
  @browser.goto($base+fn+'.html')
  if (@browser.text.match( 'Please place the following text on the clipboard before continuing the test: "([^"]*)"' )) then
    text=@browser.text.match( 'Please place the following text on the clipboard before continuing the test: "([^"]*)"' )[1]
    setClipboardData(text)
    if not $has_native_clipboard then 
      @browser.goto($base+fn+'.html') # once we have proper Ruby clipboard support rather than a hack goes to another page, we can remove this..
    end
  end
  if (@browser.text.match( 'waiting for (copy|cut|paste) event' ))
    event = @browser.text.match( 'waiting for (copy|cut|paste) event' )[1]
    if(@browser.text.match( 'please trigger event from keyboard' ))
      theKey = ( {'cut'=>'x', 'copy'=>'c', 'paste'=>'v'} )[event]
      @browser.send_keys [:control, theKey]
    else
      @browser.method(event).call
    end
  else
    if( @browser.button(:index, 1) ) # test needs to be triggered "manually" (i.e. synthetic events tests)
      @browser.button(:index, 1).click
    end
  end
  # Sometimes tests need the clipboard to be updated while the event processing is happening.
  # The @browser.method(event).call above needs to be synchronous for the *typical* test though,
  # so I'm not sure how to handle this well..
  if (@browser.text.match( 'please copy "([^"]*)" to clipboard while the test runs' )) then
    text=@browser.text.match( 'please copy "([^"]*)" to clipboard while the test runs' )[1]
    setClipboardData(text)
  end

  if (@browser.text.match( 'This test passes if this text is now on the system clipboard: "([^"]*)"' ))
    expected = @browser.text.match( 'This test passes if this text is now on the system clipboard: "([^"]*)"' )[1]
    actual = getClipboardData()
    print expected+' \n '+actual  unless expected.eql?( actual )
    expected.eql?( actual ).should==true
  else
    @browser.text.include?("PASSED").should == true
  end
end


def setClipboardData(str)
  print 'Setting: '+str+"\n"
  if $has_native_clipboard then
    Clipboard.copy str
  else
    @browser.goto 'data:,'+str
    @browser.opera_action 'Select all'
    @browser.opera_action 'Copy'
    @browser.back
  end
end

def clearClipboard
  if $has_native_clipboard then
    Clipboard.clear
  else
    setClipboardData('')
  end
end

def getClipboardData
  if $has_native_clipboard then
    str=Clipboard.paste
    print 'Getting '+str+"\n"
    return str
  else
    #browser.goto 'data:text/html,<html contentEditable="true"><head><title>test</title></head><body></body></html>' 
    #browser.execute_script 'window.focus();document.body.focus();var sel=window.getSelection();var range=document.createRange();range.selectNodeContents(document.body);range.collapse(false);sel.removeAllRanges();sel.addRange(range)'
    @browser.goto 'data:text/html,<head><title>hi</title></head><textarea name="pdata" onfocus="this.select()">hello</textarea>'
    @browser.key('tab')
    @browser.opera_action 'Paste'
    str = @browser.text_field( :name, 'pdata').value
    @browser.back
    return str
  end
end

