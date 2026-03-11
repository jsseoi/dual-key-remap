#define AppName "Dual Key Remap"
#ifndef AppVersion
  #define AppVersion "dev"
#endif
#ifndef OutputBaseFilename
  #define OutputBaseFilename "dual-key-remap-setup"
#endif

[Setup]
AppId={{F2B1C4C5-69D0-4C82-9D7E-16E0C2AA6B53}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher=ililim
DefaultDirName={autopf}\Dual Key Remap
DefaultGroupName={#AppName}
DisableProgramGroupPage=yes
UninstallDisplayIcon={app}\dual-key-remap.exe
OutputDir=releases
OutputBaseFilename={#OutputBaseFilename}
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64compatible
SetupIconFile=assets\tray.ico

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked

[Files]
Source: "dual-key-remap.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "config.example.txt"; DestDir: "{app}"; DestName: "config.txt"; Flags: onlyifdoesntexist
Source: "add-to-startup.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; DestName: "README.txt"; Flags: ignoreversion
Source: "CHANGELOG.md"; DestDir: "{app}"; DestName: "CHANGELOG.txt"; Flags: ignoreversion
Source: "LICENSE"; DestDir: "{app}"; DestName: "LICENSE.txt"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\{#AppName}\Launch Dual Key Remap"; Filename: "{app}\dual-key-remap.exe"
Name: "{autoprograms}\{#AppName}\README"; Filename: "{app}\README.txt"
Name: "{autoprograms}\{#AppName}\Open Install Folder"; Filename: "{app}"
Name: "{autoprograms}\{#AppName}\Add to Startup (Admin)"; Filename: "{app}\add-to-startup.bat"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\dual-key-remap.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\dual-key-remap.exe"; Description: "Launch Dual Key Remap"; Flags: nowait postinstall skipifsilent
