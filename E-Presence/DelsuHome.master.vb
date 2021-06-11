
Partial Class DelsuHome
    Inherits System.Web.UI.MasterPage

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        If txtUN.Text = "Administrator" And txtUP.Text = "admin" Then
            Response.Redirect("LecturerView.aspx")
        ElseIf txtUN.Text = "Lecturer" And txtUP.Text = "hampo" Then
            Response.Redirect("NoticeBoardView.aspx")
        ElseIf txtUN.Text = "Student" And txtUP.Text = "johnpaul" Then
            Response.Redirect("NoticeBoard.aspx")
        Else
            result.Text = "Wrong Login details. Please repeat action with correct details."
        End If
    End Sub
End Class

