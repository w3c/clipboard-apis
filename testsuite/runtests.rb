require "operawatir/helper"

 # 	The source of this spec contains a number of tests for extraction. Here are some requirements for the test framework:
 # 		framework will then focus suitable element and trigger relevant event. For paste, data will be given in 'paste data:' comment.
 # 		(If there is no "paste data:" instruction, the framework shall clear the clipboard before each test is run)
 # 		for cut/copy, framework will select element contents before triggering command
 # 		if test function returns undefined, the test is async and will call a result() method the framework must define with pass/fail
 # 		An "External pass condition - clipboard data:" comment indicates that the pass/fail result of the test can not be checked from JavaScript, and the framework must check if the expected data is on the clipboard to know if the test passed or failed
 # 		If the test code defines triggerTestManually() the tester or framework needs to do specific actions before the test runs.
 # 		If the test code defines onTestSetupReady() it must be called after event listeners were defined to trigger the actual test
 # 


describe "" do
  base='file://localhost/E:/projects/spec-dev/copy-paste/tests/'
  num_tests=65
  counter=1
  while counter<=num_tests  do
    it "test "+counter do
      setClipboardData('')
      fn=(1000+counter).to_s.sub( '^1','') # guess there is a built-in str_pad in Ruby somewhere, but I'm offline without much documentation..
      browser.goto(base+fn+'.html')
      if (browser.text.match( 'Please place the following text on the clipboard before continuing the test: "([^"]*)"' ))
        text=browser.text.match( 'Please place the following text on the clipboard before continuing the test: "([^"]*)"' )[1]
        setClipboardData(text)
        browser.goto(base+fn+'.html') # once we have proper Ruby clipboard support rather than a hack goes to another page, we can remove this..
      end
      if (browser.text.match( 'waiting for (copy|cut|paste) event' ))
        event = browser.text.match( 'waiting for (copy|cut|paste) event' )[1]
        browser.opera_action event.capitalize
      else
        if( browser.button(:index, 1) ) # test needs to be triggered "manually" (i.e. synthetic events tests)
          browser.button(:index, 1).click
        end
      end
      if (browser.text.match( 'This test passes if this text is now on the system clipboard: "([^"]*)"' ))
        expected = browser.text.match( 'This test passes if this text is now on the system clipboard: "([^"]*)"' )[1]
        actual = getClipboardData()
        expected.eql?( actual ).should==true
      else
        browser.text.include?("PASSED").should == true
      end
    end
    counter++
  end
end

def setClipboardData(str)
  browser.goto 'data:,'+str
  browser.opera_action 'Select all'
  browser.opera_action 'Copy'
  browser.back
end

def getClipboardData
  #browser.goto 'data:text/html,<html contentEditable="true"><head><title>test</title></head><body></body></html>' 
  #browser.execute_script 'window.focus();document.body.focus();var sel=window.getSelection();var range=document.createRange();range.selectNodeContents(document.body);range.collapse(false);sel.removeAllRanges();sel.addRange(range)'
  browser.goto 'data:text/html,<head><title>hi</title></head><textarea name="pdata" onfocus="this.select()">hello</textarea>'
  browser.key('tab')
  browser.opera_action 'Paste'
  str = browser.text_field( :name, 'pdata').value
  browser.back
  return str
end

