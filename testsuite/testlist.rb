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

	it "9  setData() method " do 
		doSingleTest 9
	end

	it "10  setData() method " do 
		doSingleTest 10
	end

	it "11  copy event when there is no selection and script uses setData()  " do 
		doSingleTest 11
	end

	it "12  copy event when there is no selection and script uses setData()  " do 
		doSingleTest 12
	end

	it "13  cancelling default action, basic test  " do 
		doSingleTest 13
	end

	it "14  cancelling default action, basic test  " do 
		doSingleTest 14
	end

	it "15  cancelling default action, basic test  " do 
		doSingleTest 15
	end

	it "16  cancelling default action, basic test  " do 
		doSingleTest 16
	end

	it "17  copy event does not modify selection  " do 
		doSingleTest 17
	end

	it "18  copy event does not modify selection  " do 
		doSingleTest 18
	end

	it "19  default action of event when there is no selection is noop " do 
		doSingleTest 19
	end

	it "20  default action of event when there is no selection is noop " do 
		doSingleTest 20
	end

	it "21  default action of cut event when there is no selection - no text change " do 
		doSingleTest 21
	end

	it "22  getData() method in cut and copy events should return an empty string " do 
		doSingleTest 22
	end

	it "23  getData() method in cut and copy events should return an empty string " do 
		doSingleTest 23
	end

	it "24  getData() method when type is unsupported should return an empty string " do 
		doSingleTest 24
	end

	it "25  cancelling default action of cut prevents removal of text from editable context  " do 
		doSingleTest 25
	end

	it "26  cancelling default action of cut prevents removal of text from editable context  " do 
		doSingleTest 26
	end

	it "27  no default action for cut in non-editable context " do 
		doSingleTest 27
	end

	it "28  cut fires before text is removed  " do 
		doSingleTest 28
	end

	it "29  cut fires before text is removed  " do 
		doSingleTest 29
	end

	it "30  cut collapses selection  " do 
		doSingleTest 30
	end

	it "31  setData() in cut event without preventDefault() has no effect when default action is noop " do 
		doSingleTest 31
	end

	it "32  modifying data for cut event in non-editable context with selection " do 
		doSingleTest 32
	end

	it "33  modifying data for cut event in non-editable context with selection " do 
		doSingleTest 33
	end

	it "34  setData() method without preventing events's default action " do 
		doSingleTest 34
	end

	it "35  setData() method without preventing events's default action " do 
		doSingleTest 35
	end

	it "36  events fire on INPUT " do 
		doSingleTest 36
	end

	it "37  events fire on INPUT " do 
		doSingleTest 37
	end

	it "38  events fire on TEXTAREA " do 
		doSingleTest 38
	end

	it "39  events fire on TEXTAREA " do 
		doSingleTest 39
	end

	it "40  paste event fires before data is inserted " do 
		doSingleTest 40
	end

	it "41  paste event fires before data is inserted " do 
		doSingleTest 41
	end

	it "42  preventing default action  " do 
		doSingleTest 42
	end

	it "43  preventing default action  " do 
		doSingleTest 43
	end

	it "44  paste event fires even in non-editable context " do 
		doSingleTest 44
	end

	it "45  paste event fires even in non-editable context " do 
		doSingleTest 45
	end

	it "46  setData() does not modify text that is about to be inserted in a paste event " do 
		doSingleTest 46
	end

	it "47  setData() doesn't modify text on the clipboard when called from a paste event " do 
		doSingleTest 47
	end

	it "48  getData() method in paste event retrieving plain text " do 
		doSingleTest 48
	end

	it "49  getData() method when called outside event handler should return an empty string " do 
		doSingleTest 49
	end

	it "50  getData() method with wrong number of arguments " do 
		doSingleTest 50
	end

	it "51  getData() method supports legacy 'text' argument " do 
		doSingleTest 51
	end

	it "52  getData() method's type argument not case sensitive " do 
		doSingleTest 52
	end

	it "53  event.clipboardData exists and inherits from DataTransfer " do 
		doSingleTest 53
	end

	it "54  event.clipboardData exists and inherits from DataTransfer " do 
		doSingleTest 54
	end

	it "55  event.clipboardData exists and inherits from DataTransfer " do 
		doSingleTest 55
	end

	it "56  event target when selection spans several elements  " do 
		doSingleTest 56
	end

	it "57  event target when selection spans several elements  " do 
		doSingleTest 57
	end

	it "58  event target when selection spans several elements  " do 
		doSingleTest 58
	end

	it "59  event target when selection spans several elements  " do 
		doSingleTest 59
	end

	it "60  event target when selection spans several elements  " do 
		doSingleTest 60
	end

	it "61  event target when selection spans several elements  " do 
		doSingleTest 61
	end

	it "62  event target when selection spans several elements  " do 
		doSingleTest 62
	end

	it "63  event target when selection spans several elements  " do 
		doSingleTest 63
	end

	it "64  event target when selection spans several elements  " do 
		doSingleTest 64
	end

	it "65  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 65
	end

	it "66  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 66
	end

	it "67  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 67
	end

	it "68  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 68
	end

	it "69  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 69
	end

	it "70  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 70
	end

	it "71  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 71
	end

	it "72  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 72
	end

	it "73  event target when selection spans several elements - reversed selection  " do 
		doSingleTest 73
	end

	it "74  event target when focused element has no text node inside  " do 
		doSingleTest 74
	end

	it "75  event target when focused element has no text node inside  " do 
		doSingleTest 75
	end

	it "76  copy event target property - selection in input  " do 
		doSingleTest 76
	end

	it "77  copy event target property - selection in input  " do 
		doSingleTest 77
	end

	it "78  copy event target property - selection in input  " do 
		doSingleTest 78
	end

	it "79  event target property - selection in document text  " do 
		doSingleTest 79
	end

	it "80  event target property - selection in document text  " do 
		doSingleTest 80
	end

	it "81  event target property - selection in document text  " do 
		doSingleTest 81
	end

	it "82  event target when no specific element has focus  " do 
		doSingleTest 82
	end

	it "83  event target when no specific element has focus  " do 
		doSingleTest 83
	end

	it "84  event target when no specific element has focus  " do 
		doSingleTest 84
	end

	it "85  clipboardData.items when clipboard has one single text/plain entry " do 
		doSingleTest 85
	end

	it "86  getting data from clipboardData.items when clipboard has one single text/plain entry " do 
		doSingleTest 86
	end

	it "87  setData and clipboardData.items  " do 
		doSingleTest 87
	end

	it "88  setData and clipboardData.items  " do 
		doSingleTest 88
	end

	it "89  pasting a file " do 
		doSingleTest 89
	end

	it "90  clipboard modification when script uses both clearData() and setData()  " do 
		doSingleTest 90
	end

	it "91  clipboard modification when script uses both clearData() and setData()  " do 
		doSingleTest 91
	end

	it "92  reading clipboard data from looping script  " do 
		doSingleTest 92
	end

	it "93  ClipboardEvent interface - synthetic events with new ClipboardEvent constructor  " do 
		doSingleTest 93
	end

	it "94  ClipboardEvent interface - synthetic events with non-standard MIME type  " do 
		doSingleTest 94
	end

	it "95  ClipboardEvent interface - synthetic copy/cut events must not affect system clipboard " do 
		doSingleTest 95
	end

	it "96  ClipboardEvent interface - synthetic copy/cut events must not affect system clipboard " do 
		doSingleTest 96
	end

	it "97  ClipboardEvent interface - synthetic paste event does not insert data into TEXTAREA  " do 
		doSingleTest 97
	end

	it "98  ClipboardEvent interface - synthetic paste event does not insert data into INPUT  " do 
		doSingleTest 98
	end

	it "99  ClipboardEvent interface - synthetic paste event does not insert plain text data into contentEditable element  " do 
		doSingleTest 99
	end

	it "100  ClipboardEvent interface - synthetic paste event does not insert HTML data into contentEditable element  " do 
		doSingleTest 100
	end

	it "101  integration with execCommand, events are syncronous " do 
		doSingleTest 101
	end

	it "102  integration with execCommand, events are syncronous " do 
		doSingleTest 102
	end

	it "103  integration with execCommand, events are syncronous " do 
		doSingleTest 103
	end

	it "104  integration with execCommand, can prevent default action " do 
		doSingleTest 104
	end

	it "105  integration with execCommand, can prevent default action " do 
		doSingleTest 105
	end

	it "106  integration with execCommand, can prevent default action " do 
		doSingleTest 106
	end

	it "107  clipboard events relative to key events  " do 
		doSingleTest 107
	end

	it "108  clipboard events relative to key events  " do 
		doSingleTest 108
	end

	it "109  clipboard events relative to key events  " do 
		doSingleTest 109
	end

	it "110  clipboard events relative to key events - preventDefault prevents clipboard events  " do 
		doSingleTest 110
	end

	it "111  clipboard events relative to key events - preventDefault prevents clipboard events  " do 
		doSingleTest 111
	end

	it "112  clipboard events relative to key events - preventDefault prevents clipboard events  " do 
		doSingleTest 112
	end

	it "113  clipboard events relative to other input events  " do 
		doSingleTest 113
	end

	it "114  clipboard events relative to other input events  " do 
		doSingleTest 114
	end

	it "115  copy operation does not dispatch other events  " do 
		doSingleTest 115
	end

	it "116  copy operation does not dispatch other events  " do 
		doSingleTest 116
	end

	it "117  event listener that modifies focus " do 
		doSingleTest 117
	end

	it "118  event listener that modifies focus " do 
		doSingleTest 118
	end

	it "119  event listener that modifies focus " do 
		doSingleTest 119
	end

	it "120  event listener that modifies selection " do 
		doSingleTest 120
	end

	it "121  setData() called outside event handler method " do 
		doSingleTest 121
	end

	it "122  setData() called outside event handler method " do 
		doSingleTest 122
	end

	it "123  setData() called outside event handler method " do 
		doSingleTest 123
	end

	it "124  items.add() called outside event handler method " do 
		doSingleTest 124
	end

	it "125  items.add() called outside event handler method " do 
		doSingleTest 125
	end

	it "126  items.add() called outside event handler method " do 
		doSingleTest 126
	end

	it "127  clearData() called outside event handler method " do 
		doSingleTest 127
	end

	it "128  clearData() called outside event handler method " do 
		doSingleTest 128
	end

	it "129  clearData() called outside event handler method " do 
		doSingleTest 129
	end

	it "130  ClipboardEvent and non-ASCII data I - Japanese " do 
		doSingleTest 130
	end

	it "131  ClipboardEvent and non-ASCII data I - Japanese " do 
		doSingleTest 131
	end

	it "132  ClipboardEvent and non-ASCII data I - Japanese " do 
		doSingleTest 132
	end

	it "133  ClipboardEvent and non-ASCII data II - random Unicode symbols " do 
		doSingleTest 133
	end

	it "134  ClipboardEvent and non-ASCII data II - random Unicode symbols " do 
		doSingleTest 134
	end

	it "135  events fire inside SVG content  " do 
		doSingleTest 135
	end

	it "136  events fire inside SVG content  " do 
		doSingleTest 136
	end

	it "137  events fire inside SVG content  " do 
		doSingleTest 137
	end

	it "138  events fire inside SVG content  " do 
		doSingleTest 138
	end

	it "139  events fire inside SVG content  " do 
		doSingleTest 139
	end

	it "140  events fire inside SVG content  " do 
		doSingleTest 140
	end

	it "141  events fire inside editable SVG content  " do 
		doSingleTest 141
	end

	it "142  events fire inside editable SVG content  " do 
		doSingleTest 142
	end

	it "143  events fire inside editable SVG content  " do 
		doSingleTest 143
	end

	it "144  events fire inside editable SVG content  " do 
		doSingleTest 144
	end

	it "145  events fire inside editable SVG content  " do 
		doSingleTest 145
	end

	it "146  events fire inside editable SVG content  " do 
		doSingleTest 146
	end

	it "147  events fire inside SVG content in contentEditable " do 
		doSingleTest 147
	end

	it "148  events fire inside SVG content in contentEditable " do 
		doSingleTest 148
	end

	it "149  events fire inside SVG content in contentEditable " do 
		doSingleTest 149
	end

	it "150  events fire inside SVG content in contentEditable " do 
		doSingleTest 150
	end

	it "151  events fire inside SVG content in contentEditable " do 
		doSingleTest 151
	end

	it "152  events fire inside SVG content in contentEditable " do 
		doSingleTest 152
	end

	it "153  setData() followed by clearData() in same event handler " do 
		doSingleTest 153
	end

	it "154  setData() followed by clearData() in same event handler " do 
		doSingleTest 154
	end

	it "155  Clipboard event's clipboardData API " do 
		doSingleTest 155
	end

	it "156  Clipboard event's clipboardData API " do 
		doSingleTest 156
	end

	it "157  Clipboard event's clipboardData API " do 
		doSingleTest 157
	end

	it "158  types property - all implementations must return 'text/plain' as one of the .types entries when there is plain text on the clipboard " do 
		doSingleTest 158
	end

	it "159  setData() method does not throw when implementation does not know the type " do 
		doSingleTest 159
	end

	it "160  setData() method does not throw when implementation does not know the type " do 
		doSingleTest 160
	end

	it "161  setData() method with text/html (experimental) " do 
		doSingleTest 161
	end

	it "162  setData() method with text/html (experimental) " do 
		doSingleTest 162
	end

	it "163  clearData() method without arguments " do 
		doSingleTest 163
	end

	it "164  clearData() method without arguments " do 
		doSingleTest 164
	end

	it "165  clearData() method is noop in paste event " do 
		doSingleTest 165
	end

	it "166  clearData() method with text/html argument " do 
		doSingleTest 166
	end

	it "167  clearData() method with text/html argument " do 
		doSingleTest 167
	end

	it "168  clearData() method without preventing events's default action " do 
		doSingleTest 168
	end

	it "169  clearData() method without preventing events's default action " do 
		doSingleTest 169
	end

end