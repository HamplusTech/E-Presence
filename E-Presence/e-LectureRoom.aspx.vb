Imports System.Timers
Partial Class e_LectureRoom
    Inherits System.Web.UI.Page

    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        lbTotalTime.Text = "0:02:00"
        'lbLectureTimeReader.Text = "0:02:00"
        Dim timer, timer_arr() As String
        timer = lbLectureTimeReader.Text
        timer_arr = timer.Split(":")
        Dim seconds = Integer.Parse(timer_arr(2))
        Dim minutes = Integer.Parse(timer_arr(1))
        Dim hours = Integer.Parse(timer_arr(0))
        If seconds = 0 And minutes = 0 And hours = 0 Then
            Timer1.Enabled = False
            'Panel1.Visible = True
        Else
            seconds = seconds - 1
        End If
        If (seconds < 0) Then
            seconds = 60
            minutes = minutes - 1
        End If
        If minutes < 0 Then
            minutes = 60
            hours = hours - 1
        End If
        'If minutes <= 5 Then
        '    Do Until minutes < 5
        '        Beep()
        '    Loop
        'End If
        lbLectureTimeReader.Text = hours & ":" & minutes & ":" & seconds
    End Sub
 
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  lbTotalTime.Text = DateTime.Now.ToLongTimeString
    End Sub

    Protected Sub Timer2_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        Dim timer, timer_arr() As String
        timer = Label9.Text
        timer_arr = timer.Split(":")
        Dim seconds = Integer.Parse(timer_arr(2))
        Dim minutes = Integer.Parse(timer_arr(1))
        Dim hours = Integer.Parse(timer_arr(0))
        If seconds = 0 And minutes = 0 And hours = 0 Then
            Timer2.Enabled = False
        Else
            seconds = seconds - 1
        End If
        If (seconds < 0) Then
            seconds = 60
            minutes = minutes - 1
        End If
        If minutes < 0 Then
            minutes = 60
            hours = hours - 1
        End If
        'If minutes <= 5 Then
        '    Do Until minutes < 5
        '        Beep()
        '    Loop
        'End If
        Label9.Text = hours & ":" & minutes & ":" & seconds

        '  If Timer2.Interval = (2000 * 2) Then
        UpdatePanel2.Visible = True
        ' End If
    End Sub
End Class
