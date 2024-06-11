$params = @{
    csvPath = '.\Scripts\Config - WindowsGUI.csv'
    windowTitle = 'Ozdoc Support'
    buttonForegroundColor = 'White'
    buttonBackgroundColor = 'Black'
    hideConsole = $true
    noExit = $true
    Verbose = $true
}
Show-ScriptMenuGui @params