<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompanyViewPage.aspx.cs" Inherits="CompanyViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style=" font-family= Arial">
    <asp:GridView ID="CompanyMaster" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4">
    <Columns>
    <asp:BoundField DataField="id" HeaderText="id" />
    <asp:BoundField DataField="Name" HeaderText="File name" />
    <asp:BoundField DataField="status" HeaderText="status" />
    </Columns>
        <EmptyDataTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("File Name") %>' CommandName="Download" 
                onclick="LinkButton1_Click" Text='<%# Eval("File Name") %>'></asp:LinkButton>
        </EmptyDataTemplate>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    </div>
    </form>
</body>
</html>
