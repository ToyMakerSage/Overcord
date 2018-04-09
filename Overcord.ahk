#NoEnv
#Warn
#SingleInstance force


processName := "discord.exe" ; DISCORD.EXE

Hotkey, IfWinActive, ahk_exe %processName%
Hotkey, ^!s, start, on ; ALT+S in order to start the script while your always on top window is active
FallThrough := false ; assumes the WS_EX_CLICKTHROUGH ex style is not already set
SubtleTrans := false ;
FullHide := false ;
ExpTrans := false ;
return ; end of the auto-execute section

start:
AHKID := "ahk_id " . (ID:=WinExist("A")) ; strores matching window ID
WinSet, AlwaysOnTop, On, % AHKID
Gosub, toggle ; jumps to the toggle label and execute it
Hotkey, IfWinActive ; restore hotkey context-sensitivity
Hotkey, ^!x, toggle, on ; enable toggle hotkey
Hotkey, ^!z, togalp, on ;
Hotkey, ^!CapsLock, toghid, on ;
TrayTip, %A_ScriptName%, %A_ThisLabel%
return

toggle:
	if (!(FullHide))
	{
		if (FallThrough) 
		{
			FallThrough := 0
			ExpTrans := 0
			WinSet, ExStyle, -0x20, % AHKID
			WinSet, Transparent, 255, % AHKID
		} 
		else 
		{
			FallThrough := 1
			ExpTrans := 1
			WinSet, ExStyle, +0x20, % AHKID
			if (SubtleTrans)
			{
				WinSet, Transparent, 50, % AHKID
			}
			else
			{
				WinSet, Transparent, 120, % AHKID
			}
		}
	}
	return

togalp:
	if (!(FullHide))
	{
		if (FallThrough)
		{
			if (SubtleTrans)
			{
				SubtleTrans := 0
				WinSet, Transparent, 120, % AHKID
			}
			else
			{
				SubtleTrans := 1
				WinSet, Transparent, 50, % AHKID
			}
		}
	}
	return

toghid:
	if (FullHide)
	{
		FullHide := 0
		if (ExpTrans)
		{
			if (SubtleTrans)
			{
				WinSet, Transparent, 50, % AHKID
			}
			else
			{
				WinSet, Transparent, 120, % AHKID
			}
		}
		else
		{
			WinSet, ExStyle, -0x20, % AHKID
			WinSet, Transparent, 255, % AHKID
		}
	}
	else
	{
		FullHide := 1
		if (!(ExpTrans))
		{
			WinSet, ExStyle, +0x20, % AHKID
		}
		WinSet, Transparent, 0, % AHKID
	}
	return
