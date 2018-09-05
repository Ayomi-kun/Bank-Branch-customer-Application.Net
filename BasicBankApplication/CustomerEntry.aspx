<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerEntry.aspx.cs" Inherits="BasicBankApplication.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="text-align:center;">
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter The Customer Detail"></asp:Label>
</p>
<p>
    <asp:Label ID="Label3" runat="server" Text="Account Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="accno" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Bank ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="bid" runat="server" DataSourceID="SqlDataSource1" DataTextField="BankID" DataValueField="BankID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BankID] FROM [Bank]"></asp:SqlDataSource>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="Branch ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="brid" runat="server" DataSourceID="SqlDataSource2" DataTextField="BranchID" DataValueField="BranchID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BranchID] FROM [Branch]"></asp:SqlDataSource>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="Customer Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="custname" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="address" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="contno" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label8" runat="server" Text="Balance"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="balance" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
</p>
    <p>
</p>
</asp:Content>
