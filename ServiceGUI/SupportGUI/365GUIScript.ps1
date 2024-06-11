$params = @{
    csvPath = '.\Scripts\Config - 365GUI.csv'
    windowTitle = 'Ozdoc Support'
    buttonForegroundColor = 'White'
    buttonBackgroundColor = 'Black'
    hideConsole = $true
    noExit = $true
    Verbose = $true
}
Show-ScriptMenuGui @params