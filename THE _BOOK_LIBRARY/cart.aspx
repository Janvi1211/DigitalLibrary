<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="cart.aspx.vb" Inherits="THE__BOOK_LIBRARY.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center; color:#7B5836;">ADD TO CART</h1>
    <p style="text-align: center; color:#7B5836;">&nbsp;</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 638px; text-align: right;">
                BOOK IMAGE:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 638px; text-align: right;">
                BOOK ID:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtbid" runat="server" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 638px; text-align: right;">
                BOOK NAME:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtbname" runat="server" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 638px; text-align: right;">
                AUTHER NAME:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtaname" runat="server" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 638px; text-align: right;">
                PRICE:</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtprice" runat="server" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 638px; height: 55px; text-align: right;">
                </td>
            <td style="height: 55px; text-align: left;">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="ADD" Width="187px" 
                    BackColor="#996633" ForeColor="White" Height="55px" />
            </td>
        </tr>
        <tr>
            <td style="width: 638px; text-align: right;">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="bid" DataSourceID="SqlDataSource1" Width="1082px" 
        AllowPaging="True" CellPadding="1" style="margin-right: 71px">
        <Columns>
            <asp:BoundField DataField="bid" HeaderText="BOOK ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="bid" />
            <asp:BoundField DataField="bname" HeaderText="BOOK NAME" 
                SortExpression="bname" />
            <asp:BoundField DataField="aname" HeaderText="AUTHOR  NAME" 
                SortExpression="aname" />
            <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
            <asp:TemplateField HeaderText="BOOK IMAGE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("bimg") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("bimg") %>' />
                </ItemTemplate>
                <ControlStyle Height="100px" Width="100px" />
                <ItemStyle Height="100px" Width="100px" />
            </asp:TemplateField>
        </Columns>
        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>

</asp:Content>
