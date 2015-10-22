; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "TraceLab"
#define MyAppVersion "1.0"
#define MyAppPublisher "COEST"
#define MyAppURL "http://coest.org"
#define MyAppExeName "StartTraceLab.bat"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{337DEF24-60B6-444D-B9B1-B2FECC58E245}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=TraceLab-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]                                                         
Source: "C:\Perforce\herzumuser_emanueleforlano_8617\relab\branches\herzum\TraceLab\bin\ReleaseMono\StartTraceLab.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Perforce\herzumuser_emanueleforlano_8617\relab\branches\herzum\TraceLab\bin\ReleaseMono\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: "desktopicon";  IconFileName: "{app}\TraceLab.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon;  IconFileName: "{app}\TraceLab.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent

[Registry]

Root: HKCR; Subkey: "TraceLabStart.temlfile";             ValueType: string; ValueName: ""; ValueData: "TraceLab experiment file";        Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlfile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\TraceLabExperiment.ico";    Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlfile\shell";       ValueType: string; ValueName: ""; ValueData: "";                                Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlfile\shell\open";  ValueType: string; ValueName: ""; ValueData: "open";                            Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlfile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName} ""%1""";      Flags: uninsdeletekeyifempty

Root: HKCR; Subkey: "TraceLabStart.temlxfile";             ValueType: string; ValueName: ""; ValueData: "TraceLab crypted experiment file";     Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlxfile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\TraceLabExperiment.ico";         Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlxfile\shell";       ValueType: string; ValueName: ""; ValueData: "";                                     Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlxfile\shell\open";  ValueType: string; ValueName: ""; ValueData: "open";                                 Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.temlxfile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName} ""%1""";           Flags: uninsdeletekeyifempty

Root: HKCR; Subkey: "TraceLabStart.tpkgfile";             ValueType: string; ValueName: ""; ValueData: "TraceLab package file";           Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.tpkgfile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\TraceLabPackage.ico";       Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.tpkgfile\shell";       ValueType: string; ValueName: ""; ValueData: "";                                Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.tpkgfile\shell\open";  ValueType: string; ValueName: ""; ValueData: "open";                            Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "TraceLabStart.tpkgfile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName} ""%1""";      Flags: uninsdeletekeyifempty
                                                                                                                                                     
Root: HKCR; Subkey: ".teml"; ValueType: string; ValueName: "";              ValueData: "TraceLabStart.temlfile";  Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: ".teml"; ValueType: string; ValueName: "Content Type";  ValueData: "application/teml";        Flags: uninsdeletekeyifempty

Root: HKCR; Subkey: ".temlx"; ValueType: string; ValueName: "";             ValueData: "TraceLabStart.temlxfile"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: ".temlx"; ValueType: string; ValueName: "Content Type"; ValueData: "application/temlx";        Flags: uninsdeletekeyifempty

Root: HKCR; Subkey: ".tpkg"; ValueType: string; ValueName: "";              ValueData: "TraceLabStart.tpkgfile";  Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: ".tpkg"; ValueType: string; ValueName: "Content Type";  ValueData: "application/tpkg";       Flags: uninsdeletekeyifempty

