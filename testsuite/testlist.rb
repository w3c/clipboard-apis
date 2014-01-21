
describe "Clipboard events testsuite" do
  before(:all) do
    @browser = OperaWatir::Browser.new
    $base = 'file://localhost/d:/projects/spec-dev/copy-paste/W3C-repo/clipops/testsuite/'
  end

	it "1 ClipboardEvent - events fire on INPUT " do
		doSingleTest 1
	end

	it "5 ClipboardEvent - events fire on TEXTAREA " do
		doSingleTest 5
	end

	it "9 setData() method " do
		doSingleTest 9
	end

	it "11 copy event when there is no selection and script uses setData()  " do
		doSingleTest 11
	end

	it "13 cancelling default action, basic test  " do
		doSingleTest 13
	end

	it "17 copy event does not modify selection  " do
		doSingleTest 17
	end

	it "19 default action of event when there is no selection is noop " do
		doSingleTest 19
	end

	it "21 default action of cut event when there is no selection - no text change " do
		doSingleTest 21
	end

	it "22 getData() method in cut and copy events should return an empty string " do
		doSingleTest 22
	end

	it "24 getData() method when type is unsupported should return an empty string " do
		doSingleTest 24
	end

	it "25 cancelling default action of cut prevents removal of text from editable context  " do
		doSingleTest 25
	end

	it "27 no default action for cut in non-editable context " do
		doSingleTest 27
	end

	it "28 setData() in cut event without preventDefault() has no effect when default action is noop " do
		doSingleTest 28
	end

	it "29 cut fires before text is removed  " do
		doSingleTest 29
	end

	it "31 cut collapses selection  " do
		doSingleTest 31
	end

	it "32 modifying data for cut event in non-editable context with selection " do
		doSingleTest 32
	end

	it "34 setData() method without preventing events's default action " do
		doSingleTest 34
	end

	it "36 events fire on INPUT " do
		doSingleTest 36
	end

	it "38 events fire on TEXTAREA " do
		doSingleTest 38
	end

	it "40 paste event fires before data is inserted " do
		doSingleTest 40
	end

	it "42 preventing default action  " do
		doSingleTest 42
	end

	it "44 paste event fires even in non-editable context " do
		doSingleTest 44
	end

	it "45 setData() does not modify text that is about to be inserted in a paste event " do
		doSingleTest 45
	end

	it "46 setData() doesn't modify text on the clipboard when called from a paste event " do
		doSingleTest 46
	end

	it "47 getData() method in paste event retrieving plain text " do
		doSingleTest 47
	end

	it "48 getData() method when called outside event handler should return an empty string " do
		doSingleTest 48
	end

	it "49 getData() method with wrong number of arguments " do
		doSingleTest 49
	end

	it "50 getData() method supports legacy 'text' argument " do
		doSingleTest 50
	end

	it "51 getData() method's type argument not case sensitive " do
		doSingleTest 51
	end

	it "52 Using beforecopy to enable 'copy' UI that would otherwise be disabled " do
		doSingleTest 52
	end

	it "53 Using beforecut to enable 'cut' UI that would otherwise be disabled " do
		doSingleTest 53
	end

	it "54 Using beforepaste to enable 'paste' UI that would otherwise be disabled " do
		doSingleTest 54
	end

	it "55 event.clipboardData exists and inherits from DataTransfer " do
		doSingleTest 55
	end

	it "58 Clipboard event's clipboardData API " do
		doSingleTest 58
	end

	it "61 event target when selection spans several elements  " do
		doSingleTest 61
	end

	it "67 event target when selection spans several elements  " do
		doSingleTest 67
	end

	it "70 event target when selection spans several elements - reversed selection  " do
		doSingleTest 70
	end

	it "76 event target when selection spans several elements - reversed selection  " do
		doSingleTest 76
	end

	it "79 event target when focused element has no text node inside  " do
		doSingleTest 79
	end

	it "81 copy event target property - selection in input  " do
		doSingleTest 81
	end

	it "84 event target property - selection in document text  " do
		doSingleTest 84
	end

	it "87 event target when no specific element has focus  " do
		doSingleTest 87
	end

	it "90 clipboardData.items when clipboard has one single text/plain entry " do
		doSingleTest 90
	end

	it "91 getting data from clipboardData.items when clipboard has one single text/plain entry " do
		doSingleTest 91
	end

	it "92 setData and clipboardData.items  " do
		doSingleTest 92
	end

	it "94 pasting a file " do
		doSingleTest 94
	end

	it "95 pasting a file of unknown type " do
		doSingleTest 95
	end

	it "96 setData() followed by clearData() in same event handler " do
		doSingleTest 96
	end

	it "98 clearData() followed by setData() in same event handler " do
		doSingleTest 98
	end

	it "100 clipboard modification when script uses both clearData() and setData()  " do
		doSingleTest 100
	end

	it "102 reading clipboard data from looping script  " do
		doSingleTest 102
	end

	it "103 clearData() method without arguments " do
		doSingleTest 103
	end

	it "105 clearData() method with text/html argument " do
		doSingleTest 105
	end

	it "107 ClipboardEvent interface - synthetic events with new ClipboardEvent constructor  " do
		doSingleTest 107
	end

	it "108 ClipboardEvent interface - synthetic events with non-standard MIME type  " do
		doSingleTest 108
	end

	it "109 ClipboardEvent interface - synthetic copy/cut events must not affect system clipboard " do
		doSingleTest 109
	end

	it "111 ClipboardEvent interface - synthetic copy/cut events dispatched from trusted events do affect system clipboard " do
		doSingleTest 111
	end

	it "113 ClipboardEvent interface - synthetic paste event inserts payload data into TEXTAREA  " do
		doSingleTest 113
	end

	it "114 ClipboardEvent interface - synthetic paste event inserts payload data into INPUT  " do
		doSingleTest 114
	end

	it "115 ClipboardEvent interface - synthetic paste event does not insert text/html payload data into INPUT  " do
		doSingleTest 115
	end

	it "116 ClipboardEvent interface - synthetic paste event inserts plain text data into contentEditable element  " do
		doSingleTest 116
	end

	it "117 ClipboardEvent interface - synthetic paste event inserts HTML data into contentEditable element  " do
		doSingleTest 117
	end

	it "118 integration with execCommand, events are syncronous " do
		doSingleTest 118
	end

	it "121 integration with execCommand, can prevent default action " do
		doSingleTest 121
	end

	it "123 integration with execCommand, can prevent default action " do
		doSingleTest 123
	end

	it "124 clipboard events relative to key events  " do
		doSingleTest 124
	end

	it "127 clipboard events relative to key events - preventDefault prevents clipboard events  " do
		doSingleTest 127
	end

	it "130 clipboard events relative to other input events  " do
		doSingleTest 130
	end

	it "131 clipboard events relative to other input events  " do
		doSingleTest 131
	end

	it "132 copy operation does not dispatch other events  " do
		doSingleTest 132
	end

	it "134 event listener that modifies focus " do
		doSingleTest 134
	end

	it "136 event listener that modifies focus " do
		doSingleTest 136
	end

	it "137 event listener that modifies selection " do
		doSingleTest 137
	end

	it "138 setData() called outside event handler method " do
		doSingleTest 138
	end

	it "141 items.add() called outside event handler method " do
		doSingleTest 141
	end

	it "144 clearData() called outside event handler method " do
		doSingleTest 144
	end

	it "147 ClipboardEvent and non-ASCII data I - Japanese " do
		doSingleTest 147
	end

	it "149 ClipboardEvent and non-ASCII data I - Japanese " do
		doSingleTest 149
	end

	it "150 ClipboardEvent and non-ASCII data II - random Unicode symbols " do
		doSingleTest 150
	end

	it "152 events fire inside SVG content  " do
		doSingleTest 152
	end

	it "158 events fire inside editable SVG content  " do
		doSingleTest 158
	end

	it "164 events fire inside SVG content in contentEditable " do
		doSingleTest 164
	end

	it "170 types property - all implementations must return 'text/plain' as one of the .types entries when there is plain text on the clipboard " do
		doSingleTest 170
	end

	it "171 setData() method does not throw when implementation does not know the type " do
		doSingleTest 171
	end

	it "173 setData() method with text/html (experimental) " do
		doSingleTest 173
	end

	it "175 clearData() method is noop in paste event " do
		doSingleTest 175
	end

	it "176 clearData() method without preventing events's default action " do
		doSingleTest 176
	end

end
