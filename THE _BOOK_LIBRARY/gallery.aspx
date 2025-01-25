<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="gallery.aspx.vb" Inherits="THE__BOOK_LIBRARY.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="bid" 
        DataSourceID="SqlDataSource1" Height="487px" RepeatDirection="Horizontal" 
        style="text-align: center; margin-left: 0px; margin-right: 226px" 
        Width="1285px">
        <ItemTemplate>
            <asp:Image ID="Image2" runat="server" Height="255px" 
                ImageUrl='<%# Eval("bimg") %>' Width="193px" />
            <br />
            bid:
            <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
            <br />
            bname:
            <asp:Label ID="bnameLabel" runat="server" Text='<%# Eval("bname") %>' />
            <br />
            aname:
            <asp:Label ID="anameLabel" runat="server" Text='<%# Eval("aname") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            bimg:
            <asp:Label ID="bimgLabel" runat="server" Text='<%# Eval("bimg") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
</asp:Content>
