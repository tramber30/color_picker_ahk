#SingleInstance, force

ColorWindow(color)
{
	Gui, colorwindow: New, , Color
	Gui, Default
	Gui, +LastFound
	Gui, Font, s10, Verdana
	Gui, Color, %color%	
	Gui, Add, Text,, %color% 
	Gui, Add, Button, Default w80 gHide, Hide
	Gui, Show, x50 y50 w200 h150
	return
	
	Hide:
	{
		gui, hide
		return
	}

	GuiClose:
	{
		msgbox, close
		gui, destroy
		ExitApp
		return
	}

}

GetColor()
{
	color := 0
	MouseGetPos, MouseX, MouseY
	PixelGetColor, color, %MouseX%, %MouseY%, RGB
	extractColor := StrSplit(color, "x")
	clipboard := extractColor[2]
	ColorWindow(color)
	return
}

^<::
GetColor()





	