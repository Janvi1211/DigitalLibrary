Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Public Class login
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
            cmd.CommandText = "select * from register where uname='" & txtuname.Text & "' and password='" & txtpass.Text & "'"
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                MsgBox("login successfully!!")
                Session("uname") = txtuname.Text
                Response.Redirect("cart.aspx", False)
            Else
                MsgBox("Invalid Username or Password")
            End If
            con.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Sub clearControl()
        txtuname.Text = ""
        txtpass.Text = ""
    End Sub
End Class