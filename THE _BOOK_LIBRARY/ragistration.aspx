<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="ragistration.aspx.vb" Inherits="THE__BOOK_LIBRARY.ragistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center"></p>
    <p class="style10" style="text-align: center; font-size: xx-large;">
        <strong style="color:#7B5836;">RAGISTRATION</strong></p>
    <table style="width: 100%">
        <tr>
            <td style="width: 615px; text-align: right;">
                USERNAME:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtuname" runat="server" Width="395px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 615px; text-align: right;">
                PASSWORD:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="395px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 615px; text-align: right;">
                CONFIRM PASSWORD:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" Width="395px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 615px; text-align: right;">
                SECURITY QUESTION:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtsq" runat="server" Width="395px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 615px; text-align: right;">
                SECURITY ANSWER:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtsa" runat="server" Width="395px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 615px; text-align: right;">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 615px; text-align: right;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="White" 
                    Text="REGISTER" Width="183px" BackColor="#996633" Height="51px" />
            </td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx" 
                    Font-Underline="False" ForeColor="#7B5836">HAVE YOU ANY ACCOUNT?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 615px; text-align: center;">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
