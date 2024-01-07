var app = new PCANExplorer6.Application();
app.MainWindow.IsVisible = true;
app.NewProject("Test", "");
// Create a connection
var conn = app.Connections.Add("TestNet@pcan_usb");
conn.IsEnabled = true;
// Create a message and send it
var msg = app.TransmitMessages.Add() as IPETransmitMessage;
msg.BeginUpdate();
msg.Connection = conn;
msg.ID = 0x123;
msg.DataLength = 3;
msg.Data[0] = 0x11;
msg.Data[1] = 0x22;
msg.Data[2] = 0x33;
msg.EndUpdate();
msg.Write(0);