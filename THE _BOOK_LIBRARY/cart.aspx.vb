Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.IO
Public Class cart
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("constr").ToString)
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim dt As DataTable
    Dim da As SqlDataAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("uname") = "" Then
            MsgBox("sorry!! first login your account!!")
            Response.Redirect("~/login.aspx", False)
        Else
            MsgBox("welcome " & Session("uname").ToString)
            Label1.Text = "welcome, " & Session("uname").ToString
        End If
        Try
            cmd.Connection = con
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
       cmd.Connection = con
        FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName))
        Dim link As String = "images/" + Path.GetFileName(FileUpload1.FileName)

            cmd.CommandText = "insert into book values('" & txtbname.Text & "','" & txtaname.Text & "','" & txtprice.Text & "','" & link & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            Label1.Text = "inserted succesfully"
            displayRecord()
            clearControl()
            con.Close()
    End Sub
    Sub clearControl()
        txtbname.Text = ""
        txtaname.Text = ""
        txtprice.Text = ""
    End Sub
    Sub displayRecord()
        Try
            cmd.CommandText = "select * from book"
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            Me.DataBind()
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
End Class