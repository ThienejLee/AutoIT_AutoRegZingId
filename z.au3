; -- Created with ISN Form Studio 2 for ISN AutoIt Studio -- ;
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Include <GuiButton.au3>
#include <EditConstants.au3>
#include<IE.au3>

$guidep = GUICreate("Create Account Zing Id",528,342,-1,-1,-1,-1)
GUISetBkColor(0x1E4FD0,$guidep)

$tao=GUICtrlCreateLabel("Create Account",316,30,212,99,-1,-1)
GUICtrlSetFont(-1,30	,400,0,"Times New Roman")
GUICtrlSetBkColor(-1,"0xFAC51C")
GUICtrlCreateGroup("user , pass",7,20,309,322,-1,-1)
GUICtrlSetBkColor(-1,"0xD1F0F0")
	
$luu=GUICtrlCreateEdit("",7,48,309,292,-1,-1)
GUICtrlSetFont(-1,12,700,0,"Times New Roman")
GUICtrlSetColor(-1,"0x00FF00")
GUICtrlSetBkColor(-1,"0x000000")

$muc=GUICtrlCreateLabel("Save",316,129,212,78,-1,-1)
GUICtrlSetFont(-1,42,600,0,"Myriad Pro Light")
GUICtrlSetBkColor(-1,"0x41A85F")

;GUICtrlCreateLabel("YOUTUBE",316,207,212,58,-1,-1);
;GUICtrlSetFont(-1,24,700,0,"MS Sans Serif");
;GUICtrlSetBkColor(-1,"0xBA754F");

GUICtrlCreateLabel("Code By Epitchi",316,207,212,58,-1,-1)
GUICtrlSetFont(-1,30,400,0,"Niagara Solid")
GUICtrlSetColor(-1,"0x00FFFF")
GUICtrlSetBkColor(-1,"-2")
GUISetState(@SW_SHOW)

$q=Random(1,99999,1)
$taikhoan=("epitchi")
$username =($q & "epitchi" & $q)

$passUser = ("Laypro12")

Local $arrTaiKhoan[20]
Local $i = 0;

For $i = 0 To 19
    $arrTaiKhoan[$i] = $i
Next

$posUser = 0

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
			case $tao
				ShellExecute("iexplore")
				WinActivate('MSN Việt Nam - Hotmail, Outlook, Skype, Bing và các tin tức mới nhất - Internet Explorer')
				Sleep(1000)
send("{f6}")
send('https://sso3.zing.vn/logout?return=https%3A%2F%2Fid.zing.vn%2Fv2%2Flogin%3Fapikey%3D92140c0e46c54994812403f564787c14%26data%3Ddldtw3tVZ8twQ2Zf8g')
send('{enter}')
sleep(1000)
send("{f6}")
send("^a")
send("^x")
send('{enter}')






For $posUser =13 To 19 
Global $web = _IECreate ('https://id.zing.vn/v2/register?apikey=92140c0e46c54994812403f564787c14&pid=38&next=https%3A%2F%2Fid.zing.vn%2Fv2%2Finfosetting%3Fapikey%3D92140c0e46c54994812403f564787c14%26pid%3D38')
WinMove('Zing ID - Zing Passport - Tài khoản Zing của VNG - Internet Explorer','',0,0)
local $ten =_IEGetObjByname($web,'fullname')
local $acc =_IEGetObjById($web,'regacc_account')
local $pass =_IEGetObjById($web,'regacc_pwd')
local $pass1 =_IEGetObjByName($web,'re_pwd')
local $see =_IEGetObjByName($web,'gender')
local $see1 =_IELinkClickByText($web, "zid_regbtn")
local $see2 =_IEGetObjByName($web, "zid_regbtn")

$tk =  $q & "epitchi" & Random(1,99999,1);
$mk =  "ss347sbw" & $posUser

_IEFormElementSetValue ($ten,$tk)
_IEFormElementSetValue ($acc,$mk)
_IEFormElementSetValue ($pass,$passUser)
_IEFormElementSetValue ($pass1,$passUser)
_IEAction($see,"click")
_IEAction($see1,"click")
_IEAction($see2,"click")
WinActivate('Zing ID - Zing Passport - Tài khoản Zing của VNG - Internet Explorer')
send('{SPACE}')
MouseClick('left',571, 317)
MouseClick('left',571, 317)
Local $oForm = _IEFormGetCollection($web, 12)
Local $oQuery = _IEFormElementGetCollection($oForm, 12)
_IEFormElementSetValue($oQuery, "AutoIt IE.au3")
_IEFormSubmit($oForm)
_IEAction($oForm,"click")
_IEAction($oQuery,"click")

	Sleep(5000)
	$cu	= GUICtrlRead($luu,"user "& $tk  & @crlf & $passUser);
	$luuvao=GUICtrlSetData($luu,"user "& $tk & @crlf & $passUser&@CRLF&$cu);
	$save=GUICtrlRead($luu);
    FileWrite(@DesktopDir&'\acc.txt',$save)
    MsgBox(0,0,'da luu tren man inh may tinh ra ngoai de xem ten file (acc.txt)')
  
	Send("{F5}")
Next 
	

;		$cu	= GUICtrlRead($luu,"user "& "epitchi"& $posUser & @crlf & $passUser);
	;	$luuvao=GUICtrlSetData($luu,"user "& "epitchi"& $posUser& @crlf & $passUser&@CRLF&$cu);
		
 ;  case $muc;
;	$save=GUICtrlRead($luu);
   ; FileWrite(@DesktopDir&'\acc.txt',$save);
  ;  MsgBox(0,0,'da luu tren man inh may tinh ra ngoai de xem ten file (acc.txt)');


	EndSwitch



WEnd
