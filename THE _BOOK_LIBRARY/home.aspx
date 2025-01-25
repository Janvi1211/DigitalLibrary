<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="home.aspx.vb" Inherits="THE__BOOK_LIBRARY.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center; font-size: xx-large">
    <strong style="color:#7B5836;">WELLCOME TO THE BOOK LIBRARY</strong></p>
    <div class="content" style="flex: 1 1 41rem; text-align: center">
            <h3 style="font-size: xx-large; color:#7B5836;">upto 75% off</h3>
            <p style="color:#976f47; font-size: large;">The Book house is an open,editable library catalog,building towards a web page for every book ever published.<br />A result is only personalised when it seems helpful for you</p>
            <p><asp:Button ID="Button1" runat="server" Text="SHOP NOW" Width="186px" 
                    PostBackUrl="~/gallery.aspx" BackColor="#996633" ForeColor="White" 
                    Height="52px" />
            </p>
        </div>
    </asp:Content>
