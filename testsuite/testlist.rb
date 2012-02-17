describe "Clipboard events testsuite" do
  before(:all) do
    @browser = OperaWatir::Browser.new
    $base = 'file://localhost/d:/projects/spec-dev/copy-paste/W3C-repo/clipops/testsuite/'
  end
	
	it "1  ClipboardEvent - events fire on INPUT " do 
		doSingleTest 1
	end

	it "2  ClipboardEvent - events fire on INPUT " do 
		doSingleTest 2
	end

	it "3  ClipboardEvent - events fire on INPUT " do 
		doSingleTest 3
	end

	it "4  ClipboardEvent - events fire on INPUT " do 
		doSingleTest 4
	end

	it "5  ClipboardEvent - events fire on TEXTAREA " do 
		doSingleTest 5
	end

	it "6  ClipboardEvent - events fire on TEXTAREA " do 
		doSingleTest 6
	end

	it "7  ClipboardEvent - events fire on TEXTAREA " do 
		doSingleTest 7
	end

	it "8  ClipboardEvent - events fire on TEXTAREA " do 
		doSingleTest 8
	end

	it "9  cancelling default action, basic test  " do 
		doSingleTest 9
	end

	it "10  cancelling default action, basic test  " do 
		doSingleTest 10
	end

	it "11  cancelling default action, basic test  " do 
		doSingleTest 11
	end

	it "12  cancelling default action, basic test  " do 
		doSingleTest 12
	end

	it "13  copy event does not modify selection  " do 
		doSingleTest 13
	end

	it "14  copy event does not modify selection  " do 
		doSingleTest 14
	end

	it "15  default action of event when there is no selection is noop " do 
		doSingleTest 15
	end

	it "16  default action of event when there is no selection is noop " do 
		doSingleTest 16
	end

	it "17  default action of cut event when there is no selection - no text change " do 
		doSingleTest 17
	end

	it "18  cancelling default action of cut prevents removal of text from editable context  " do 
		doSingleTest 18
	end

	it "19  cancelling default action of cut prevents removal of text from editable context  " do 
		doSingleTest 19
	end

	it "20  no default action for cut in non-editable context " do 
		doSingleTest 20
	end

	it "21  cut fires before text is removed  " do 
		doSingleTest 21
	end

	it "22  cut fires before text is removed  " do 
		doSingleTest 22
	end

	it "23  cut collapses selection  " do 
		doSingleTest 23
	end

	it "24  events fire on INPUT " do 
		doSingleTest 24
	end

	it "25  events fire on INPUT " do 
		doSingleTest 25
	end

	it "26  events fire on TEXTAREA " do 
		doSingleTest 26
	end

	it "27  events fire on TEXTAREA " do 
		doSingleTest 27
	end

	it "28  paste event fires before data is inserted " do 
		doSingleTest 28
	end

	it "29  paste event fires before data is inserted " do 
		doSingleTest 29
	end

	it "30  preventing default action  " do 
		doSingleTest 30
	end

	it "31  preventing default action  " do 
		doSingleTest 31
	end

	it "32  paste event fires even in non-editable context " do 
		doSingleTest 32
	end

	it "33  paste event fires even in non-editable context " do 
		doSingleTest 33
	end

	it "34  event.clipboardData exists and inherits from DataTransfer " do 
		doSingleTest 34
	end

	it "35  event.clipboardData exists and inherits from DataTransfer " do 
		doSingleTest 35
	end

	it "36  event.clipboardData exists and inherits from DataTransfer " do 
		doSingleTest 36
	end

	it "37  event target when selection spans several elements  " do 
		doSingleTest 37
	end

	it "38  event target when selection spans several elements  " do 
		doSingleTest 38
	end

	it "39  event target when selection spans several elements  " do 
		doSingleTest 39
	end

	it "40  event target when selection spans several elements  " do 
		doSingleTest 40
	end

	it "41  event target when selection spans several elements  " do 
		doSingleTest 41
	end

	it "42  event target when selection spans several elements  " do 
		doSingleTest 42
	end

	it "43  event target when selection spans several elements  " do 
		doSingleTest 43
	end

	it "44  event target when selection spans several elements  " do 
		doSingleTest 44
	end

	it "45  event target when selection spans several elements  " do 
		doSingleTest 45
	end

	it "46  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 46
	end

	it "47  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 47
	end

	it "48  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 48
	end

	it "49  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 49
	end

	it "50  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 50
	end

	it "51  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 51
	end

	it "52  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 52
	end

	it "53  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 53
	end

	it "54  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 54
	end

	it "55  event target when focused element has no text node inside  " do 
		doSingleTest 55
	end

	it "56  event target when focused element has no text node inside  " do 
		doSingleTest 56
	end

	it "57  copy event target property - selection in input  " do 
		doSingleTest 57
	end

	it "58  copy event target property - selection in input  " do 
		doSingleTest 58
	end

	it "59  copy event target property - selection in input  " do 
		doSingleTest 59
	end

	it "60  event target property - selection in document text  " do 
		doSingleTest 60
	end

	it "61  event target property - selection in document text  " do 
		doSingleTest 61
	end

	it "62  event target property - selection in document text  " do 
		doSingleTest 62
	end

	it "63  event target when no specific element has focus  " do 
		doSingleTest 63
	end

	it "64  event target when no specific element has focus  " do 
		doSingleTest 64
	end

	it "65  event target when no specific element has focus  " do 
		doSingleTest 65
	end

	it "66  clipboardData.items when clipboard has one single text/plain entry " do 
		doSingleTest 66
	end

	it "67  getting data from clipboardData.items when clipboard has one single text/plain entry " do 
		doSingleTest 67
	end

	it "68  setData and clipboardData.items  " do 
		doSingleTest 68
	end

	it "69  setData and clipboardData.items  " do 
		doSingleTest 69
	end

	it "70  pasting a file " do 
		doSingleTest 70
	end

	it "71  clipboard modification when script uses both clearData() and setData()  " do 
		doSingleTest 71
	end

	it "72  clipboard modification when script uses both clearData() and setData()  " do 
		doSingleTest 72
	end

	it "73  reading clipboard data from looping script  " do 
		doSingleTest 73
	end

	it "74  ClipboardEvent interface - synthetic events with new ClipboardEvent constructor  " do 
		doSingleTest 74
	end

	it "75  ClipboardEvent interface - synthetic events with non-standard MIME type  " do 
		doSingleTest 75
	end

	it "76  ClipboardEvent interface - synthetic copy/cut events must not affect system clipboard " do 
		doSingleTest 76
	end

	it "77  ClipboardEvent interface - synthetic copy/cut events must not affect system clipboard " do 
		doSingleTest 77
	end

	it "78  ClipboardEvent interface - synthetic paste event inserts data into TEXTAREA  " do 
		doSingleTest 78
	end

	it "79  ClipboardEvent interface - synthetic paste event inserts data into INPUT  " do 
		doSingleTest 79
	end

	it "80  ClipboardEvent interface - synthetic paste event inserts plain text data into contentEditable element  " do 
		doSingleTest 80
	end

	it "81  ClipboardEvent interface - synthetic paste event inserts HTML data into contentEditable element  " do 
		doSingleTest 81
	end

	it "82  Clipboard event's clipboardData API " do 
		doSingleTest 82
	end

	it "83  Clipboard event's clipboardData API " do 
		doSingleTest 83
	end

	it "84  Clipboard event's clipboardData API " do 
		doSingleTest 84
	end

	it "85  types property - all implementations must return 'text/plain' as one of the .types entries when there is plain text on the clipboard " do 
		doSingleTest 85
	end

	it "86  getData() method in paste event retrieving plain text " do 
		doSingleTest 86
	end

	it "87  getData() method in cut and copy events should return undefined " do 
		doSingleTest 87
	end

	it "88  getData() method in cut and copy events should return undefined " do 
		doSingleTest 88
	end

	it "89  getData() method when type is unsupported should return an empty string " do 
		doSingleTest 89
	end

	it "90  getData() method when called outside event handler should return an empty string " do 
		doSingleTest 90
	end

	it "91  getData() method with wrong number of arguments " do 
		doSingleTest 91
	end

	it "92  getData() method supports legacy 'text' argument " do 
		doSingleTest 92
	end

	it "93  getData() method's type argument not case sensitive " do 
		doSingleTest 93
	end

	it "94  setData() method " do 
		doSingleTest 94
	end

	it "95  setData() method " do 
		doSingleTest 95
	end

	it "96  copy event when there is no selection and script uses setData()  " do 
		doSingleTest 96
	end

	it "97  copy event when there is no selection and script uses setData()  " do 
		doSingleTest 97
	end

	it "98  setData() in cut event without preventDefault() has no effect when default action is noop " do 
		doSingleTest 98
	end

	it "99  modifying data for cut event in non-editable context with selection " do 
		doSingleTest 99
	end

	it "100  modifying data for cut event in non-editable context with selection " do 
		doSingleTest 100
	end

	it "101  setData() method does not throw when implementation does not know the type " do 
		doSingleTest 101
	end

	it "102  setData() method does not throw when implementation does not know the type " do 
		doSingleTest 102
	end

	it "103  setData() does not modify text that is about to be inserted in a paste event " do 
		doSingleTest 103
	end

	it "104  setData() doesn't modify text on the clipboard when called from a paste event " do 
		doSingleTest 104
	end

	it "105  setData() method without preventing events's default action " do 
		doSingleTest 105
	end

	it "106  setData() method without preventing events's default action " do 
		doSingleTest 106
	end

	it "107  setData() method with text/html (experimental) " do 
		doSingleTest 107
	end

	it "108  setData() method with text/html (experimental) " do 
		doSingleTest 108
	end

	it "109  clearData() method without arguments " do 
		doSingleTest 109
	end

	it "110  clearData() method without arguments " do 
		doSingleTest 110
	end

	it "111  clearData() method is noop in paste event " do 
		doSingleTest 111
	end

	it "112  clearData() method with text/html argument " do 
		doSingleTest 112
	end

	it "113  clearData() method with text/html argument " do 
		doSingleTest 113
	end

	it "114  clearData() method without preventing events's default action " do 
		doSingleTest 114
	end

	it "115  clearData() method without preventing events's default action " do 
		doSingleTest 115
	end

	it "116  integration with execCommand, events are syncronous " do 
		doSingleTest 116
	end

	it "117  integration with execCommand, events are syncronous " do 
		doSingleTest 117
	end

	it "118  integration with execCommand, events are syncronous " do 
		doSingleTest 118
	end

	it "119  integration with execCommand, can prevent default action " do 
		doSingleTest 119
	end

	it "120  integration with execCommand, can prevent default action " do 
		doSingleTest 120
	end

	it "121  integration with execCommand, can prevent default action " do 
		doSingleTest 121
	end

	it "122  clipboard events relative to key events  " do 
		doSingleTest 122
	end

	it "123  clipboard events relative to key events  " do 
		doSingleTest 123
	end

	it "124  clipboard events relative to key events  " do 
		doSingleTest 124
	end

	it "125  clipboard events relative to key events - preventDefault prevents clipboard events  " do 
		doSingleTest 125
	end

	it "126  clipboard events relative to key events - preventDefault prevents clipboard events  " do 
		doSingleTest 126
	end

	it "127  clipboard events relative to key events - preventDefault prevents clipboard events  " do 
		doSingleTest 127
	end

	it "128  clipboard events relative to other input events  " do 
		doSingleTest 128
	end

	it "129  clipboard events relative to other input events  " do 
		doSingleTest 129
	end

	it "130  copy operation does not dispatch other events  " do 
		doSingleTest 130
	end

	it "131  copy operation does not dispatch other events  " do 
		doSingleTest 131
	end

	it "132  event listener that modifies focus " do 
		doSingleTest 132
	end

	it "133  event listener that modifies focus " do 
		doSingleTest 133
	end

	it "134  event listener that modifies focus " do 
		doSingleTest 134
	end

	it "135  event listener that modifies selection " do 
		doSingleTest 135
	end

	it "136  setData() called outside event handler method " do 
		doSingleTest 136
	end

	it "137  setData() called outside event handler method " do 
		doSingleTest 137
	end

	it "138  setData() called outside event handler method " do 
		doSingleTest 138
	end

	it "139  items.add() called outside event handler method " do 
		doSingleTest 139
	end

	it "140  items.add() called outside event handler method " do 
		doSingleTest 140
	end

	it "141  items.add() called outside event handler method " do 
		doSingleTest 141
	end

	it "142  clearData() called outside event handler method " do 
		doSingleTest 142
	end

	it "143  clearData() called outside event handler method " do 
		doSingleTest 143
	end

	it "144  clearData() called outside event handler method " do 
		doSingleTest 144
	end

	it "145  ClipboardEvent and non-ASCII data I - Japanese " do 
		doSingleTest 145
	end

	it "146  ClipboardEvent and non-ASCII data I - Japanese " do 
		doSingleTest 146
	end

	it "147  ClipboardEvent and non-ASCII data I - Japanese " do 
		doSingleTest 147
	end

	it "148  ClipboardEvent and non-ASCII data II - random Unicode symbols " do 
		doSingleTest 148
	end

	it "149  ClipboardEvent and non-ASCII data II - random Unicode symbols " do 
		doSingleTest 149
	end

	it "150  events fire inside SVG content  " do 
		doSingleTest 150
	end

	it "151  events fire inside SVG content  " do 
		doSingleTest 151
	end

	it "152  events fire inside SVG content  " do 
		doSingleTest 152
	end

	it "153  events fire inside SVG content  " do 
		doSingleTest 153
	end

	it "154  events fire inside SVG content  " do 
		doSingleTest 154
	end

	it "155  events fire inside SVG content  " do 
		doSingleTest 155
	end

	it "156  events fire inside editable SVG content  " do 
		doSingleTest 156
	end

	it "157  events fire inside editable SVG content  " do 
		doSingleTest 157
	end

	it "158  events fire inside editable SVG content  " do 
		doSingleTest 158
	end

	it "159  events fire inside editable SVG content  " do 
		doSingleTest 159
	end

	it "160  events fire inside editable SVG content  " do 
		doSingleTest 160
	end

	it "161  events fire inside editable SVG content  " do 
		doSingleTest 161
	end

	it "162  events fire inside SVG content in contentEditable " do 
		doSingleTest 162
	end

	it "163  events fire inside SVG content in contentEditable " do 
		doSingleTest 163
	end

	it "164  events fire inside SVG content in contentEditable " do 
		doSingleTest 164
	end

	it "165  events fire inside SVG content in contentEditable " do 
		doSingleTest 165
	end

	it "166  events fire inside SVG content in contentEditable " do 
		doSingleTest 166
	end

	it "167  events fire inside SVG content in contentEditable " do 
		doSingleTest 167
	end

	it "168  setData() followed by clearData() in same event handler " do 
		doSingleTest 168
	end

	it "169  setData() followed by clearData() in same event handler " do 
		doSingleTest 169
	end

end