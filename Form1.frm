VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "数码交通灯"
   ClientHeight    =   3285
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3285
   ScaleWidth      =   4680
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer3 
      Interval        =   1000
      Left            =   3120
      Top             =   2160
   End
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   2040
      Top             =   2160
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   840
      Top             =   2160
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1920
      TabIndex        =   0
      Top             =   480
      Width           =   1575
   End
   Begin VB.Shape light 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   1575
      Left            =   120
      Shape           =   3  'Circle
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim r As Integer
Dim g As Integer
Dim y As Integer
Private Sub Form_Load()
Form1.BackColor = vbBlack
Label1.BackColor = vbBlack
g = 10
y = 3
r = 10
Timer1.Enabled = True
Timer2.Enabled = False
Timer3.Enabled = False
light.FillColor = vbGreen
light.Visible = False
Label1.Visible = False
End Sub
Private Sub Timer1_Timer()
light.Visible = True
Label1.Visible = True
Label1.Caption = g
Label1.ForeColor = vbGreen
light.FillColor = vbGreen
g = g - 1
If g = 0 Then
Timer1.Enabled = False
Timer2.Enabled = True
Timer3.Enabled = False
y = 3
End If
End Sub
Private Sub Timer2_timer()
light.Visible = True
Label1.Caption = y
Label1.ForeColor = vbYellow
light.FillColor = vbYellow
y = y - 1
If y = 0 Then
Timer1.Enabled = False
Timer2.Enabled = False
Timer3.Enabled = True
r = 10
End If
End Sub
Private Sub Timer3_timer()
Label1.Caption = r
Label1.ForeColor = vbRed
light.FillColor = vbRed
r = r - 1
If r = 0 Then
Timer1.Enabled = True
Timer2.Enabled = False
Timer3.Enabled = False
g = 10
End If
End Sub
