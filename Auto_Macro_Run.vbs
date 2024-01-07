' This VB-Script opens a project in PCAN-Explorer
'-----------------------------------------------------------------------------
' Copyright (c) 2010 PEAK-System Technik GmbH.  All rights reserved.


Dim app
Dim Doc
Set app = CreateObject("PCANExplorer5.Application")

' Open the project
' Replace the Path with your project directory
app.Documents.Open "c:\Users\Support\Documents\PCAN-Explorer 5\Projects\SliderDemo\SliderDemo.peproj"

' Show the application window
app.MainWindow.IsVisible = True

' Replace the Path with your Project AddIns like Panel, Plotter etc.
Set Doc = app.Documents.Open("c:\Users\Support\Documents\PCAN-Explorer 5\Projects\SliderDemo\SliderDemoPanel.ipf")
' Set the last loaded Window as active Windows (set Focus)
Doc.ActiveWindow.IsActive=true
' Load the Macro which is part of your loaded Project
app.Documents.Open("SliderDemo.pem")
' Set the loaded Macro as applyed
app.ExecuteCommand "FileApply"
' and run any command in this Macro file you want
app.ExecuteCommand "SliderDemo"
' Now it's time to show the main application window
app.MainWindow.IsVisible = True
' And toggle the FullScreen Mode
 app.ExecuteCommand "ToggleFullScreen"
' to switch back from Fullscreen press F11