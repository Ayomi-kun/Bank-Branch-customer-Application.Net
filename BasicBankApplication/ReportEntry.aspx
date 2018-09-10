<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportEntry.aspx.cs" Inherits="BasicBankApplication.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <p style="text-align:center;">
        <asp:Label ID="Label1" runat="server" Text="Report Form"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Bank ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="bid" runat="server" DataSourceID="SqlDataSource1" DataTextField="BankID" DataValueField="BankID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BankID] FROM [Bank]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Query1" runat="server" OnClick="Query1_Click" Text="Query1" />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Branch ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="brid" runat="server" DataSourceID="SqlDataSource2" DataTextField="BranchID" DataValueField="BranchID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BranchID] FROM [Branch]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Query2" runat="server" Text="Query2" OnClick="Query2_Click" />
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Account Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="accountno" runat="server"></asp:TextBox>
&nbsp; <asp:Button ID="Query3" runat="server" Text="Query3" OnClick="Query3_Click" />
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" Font-Size="Large">
    </asp:GridView>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
