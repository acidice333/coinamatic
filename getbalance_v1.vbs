'	v1
'
'	-only checks 1st word out of 4 words total.
'	-does not check the 65535 countdown
If WScript.Arguments.Count = 0 Then
    WScript.Echo "Missing Hex Dump (drag drop)"
    WScript.Quit
End if


fileName = WScript.Arguments(0)

Const adTypeBinary = 1

Dim byteValue
Dim word1Value

With CreateObject("ADODB.Stream")
    .Type = adTypeBinary
    .Open
    .LoadFromFile fileName
    .Position = 64
    byte1Value = Right(00 & Hex(AscB(.Read(1))), 2)
    byte2Value = Right(00 & Hex(AscB(.Read(1))), 2)
    word1Value = CInt("&H" & byte2Value & byte1Value)
End With

' Print byteValue
WSCript.echo "byte1 = " & byte1Value & " byte2 = " & byte2Value
WSCript.echo "Word = "& word1Value & " ($"& word1Value/100 &")"