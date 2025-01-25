Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Public Class ragistration
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("constr").ToString)
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Try
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "select * from register where uname='" & txtuname.Text & "'"
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                MsgBox("username already registered!! please take another name")
            Else
                con.Close()
                con.Open()
                cmd.Connection = con
                cmd.CommandText = "insert into register values('" & txtuname.Text & "','" & txtpass.Text & "','" & txtcpass.Text & "','" & txtsq.Text & "','" & txtsa.Text & "')"
                cmd.ExecuteNonQuery()
                MsgBox("user registered successfully!!")
                clearcontrol()
                con.Close()
                Response.Redirect("login.aspx", False)
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Sub clearcontrol()
        txtuname.Text = ""
        txtpass.Text = ""
        txtcpass.Text = ""
        txtsq.Text = ""
        txtsa.Text = ""

    End Sub
End Class