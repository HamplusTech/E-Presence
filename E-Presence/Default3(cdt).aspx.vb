
Partial Class Default3_cdt_
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim timer, timer_arr() As String
        timer = Label1.Text
        timer_arr = timer.Split(":")
        Dim seconds = Integer.Parse(timer_arr(2))
        Dim minutes = Integer.Parse(timer_arr(1))
        Dim hours = Integer.Parse(timer_arr(0))
        If seconds = 0 And minutes = 0 And hours = 0 Then
            Timer1.Enabled = False
        Else
            seconds = seconds - 1
        End If
        If (seconds < 0) Then
            seconds = 59
            minutes = minutes - 1
        End If
        If minutes < 0 Then
            minutes = 59
            hours = hours - 1
        End If

        Label1.Text = hours & ":" & minutes & ":" & seconds
    End Sub
End Class
