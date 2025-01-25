<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="login.aspx.vb" Inherits="THE__BOOK_LIBRARY.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center;color:#7B5836;">&nbsp;LOGIN PAGE</h1>
    <br />
    <table class="style8" style="height: 230px">
        <tr>
            <td class="style9" style="width: 979px; text-align: right;">
                USER NAME:</td>
            <td style="width: 933px; text-align: left;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtuname" runat="server" CausesValidation="True" Width="256px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9" style="width: 979px; text-align: right;">
                PASSWORD:</td>
            <td style="width: 933px; text-align: left;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpass" runat="server" CausesValidation="True" Width="256px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9" style="width: 979px; text-align: right;">
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me next time." />
            </td>
            <td style="width: 933px; text-align: left;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" style="width: 979px; height: 100px; text-align: right;">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/ragistration.aspx" ForeColor="#7B5836"  
                    Font-Underline="False">CREATE AN ACCOUNT?</asp:HyperLink>
            </td>
            <td style="width: 933px; height: 100px; text-align: left;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="LOG IN" 
                    Height="45px" Width="150px" style="text-align: center" BackColor="#996633" 
                    ForeColor="White" />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <br />
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</asp:Content>
