function RunApp(AppPath)	'Run an external program
dim obj
set obj = createobject("QMDispatch.QMFunction")
obj.RunApp(AppPath)
end function

function MessageBox(Prompt)	'Open a message box(message box 
dim obj
set obj = createobject("QMDispatch.QMFunction")
obj.MessageBox(Prompt)
end function

function InputBox(Prompt)	'Get user input(notice for user:Character string)return value:The text input by user
dim obj
set obj = createobject("QMDispatch.QMFunction")
dim OutString
OutString = obj.InputBox(Prompt)
InputBox = OutString
end function

function GetCursorPos(ByRef CursorX,ByRef CursorY)	
dim obj
set obj = createobject("QMDispatch.QMFunction")
CursorPos = obj.GetCursorPos()
CursorY = CursorPos Mod 8192
CursorX = CInt(CursorPos / 8192)
end function

function GetPixelColor(PosX,PosY)	
dim obj
set obj = createobject("QMDispatch.QMFunction")
GetPixelColor = obj.GetPixelColor(PosX,PosY)
end function

function FindColor(iLeft,iTop,iRight,iBottom,szColor,ByRef FoundX,ByRef FoundY)	
dim obj
set obj = createobject("QMDispatch.QMFunction")
FoundPixel = obj.FindColor(iLeft,iTop,iRight,iBottom,szColor,0)
FoundX = CInt(FoundPixel / 8192)
FoundY = FoundPixel Mod 8192
end function

function FindCenterColor(iLeft,iTop,iRight,iBottom,szColor,ByRef FoundX,ByRef FoundY)	
dim obj
set obj = createobject("QMDispatch.QMFunction")
FoundPixel = obj.FindColor(iLeft,iTop,iRight,iBottom,szColor,1)
FoundX = CInt(FoundPixel / 8192)
FoundY = FoundPixel Mod 8192
end function

function ReadMemory(dwAddress, iType, ByRef ReadValue)  
dim obj
set obj = createobject("QMDispatch.QMFunction")
If iType=0 Then
ReadValue = CByte(obj.ReadMemory(dwAddress, iType))
Else
ReadValue = CLng(obj.ReadMemory(dwAddress, iType))
End If 
end function

function FindPic(iLeft,iTop,iRight,iBottom,szFileName,fSimilar,ByRef FoundX,ByRef FoundY)
dim obj
set obj = createobject("QMDispatch.QMFunction")
FoundPixel = obj.FindPic(iLeft,iTop,iRight,iBottom,szFileName,fSimilar)
FoundX = CInt(FoundPixel / 8192)
FoundY = FoundPixel Mod 8192
end function

function FindColorEx(iLeft,iTop,iRight,iBottom,szColor,iType,fSimilar,ByRef FoundX,ByRef FoundY)	
dim obj
set obj = createobject("QMDispatch.QMFunction")
FoundPixel = obj.FindColor(iLeft,iTop,iRight,iBottom,szColor,iType,fSimilar)
FoundX = CInt(FoundPixel / 8192)
FoundY = FoundPixel Mod 8192
end function

function GetCursorShape(iType)
dim obj
set obj = createobject("QMDispatch.QMFunction")
GetCursorShape=CLng(obj.GetCursorShape(iType))
end function

 
function Delay(iMilliSecond)		
dim obj
set obj = createobject("QMDispatch.QMFunction")
obj.SleepMS(iMilliSecond)
end function

function GetScreenResolution(ByRef ScreenX, ByRef ScreenY)	
dim obj
set obj = createobject("QMDispatch.QMFunction")
Resolution = obj.GetScreenResolution()
ScreenX = CInt(Resolution / 8192)
ScreenY = Resolution Mod 8192
end function

function SetCursorPos(CursorX,CursorY)	
dim obj
set obj = createobject("QMDispatch.QMFunction")
Call obj.SetCursorPos(CursorX,CursorY)
end function

function SayString(Prompt)	
dim obj
set obj = createobject("WScript.Shell")
call obj.SendKeys(Prompt)
end function