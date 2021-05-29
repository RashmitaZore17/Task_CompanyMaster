<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompanyMaster.aspx.cs" Inherits="CompanyMaster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
        <table align="center" bgcolor="#FFFFCC" style="width: 288px"  >
        <tr>
            <td align="center" width="50px">
            <h2 style="width: 158px"> File Name: </h2>
            </td>
            <td width="50px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
    
            </td>
        </tr>
       <tr>
                    <td align="center" width="50px">
                    <h2 style="width: 152px">Select File: </h2>
                    </td>
                    <td width="50px">
                    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" type ="file"/> 
                    </td>
                </tr> 
            <tr>
            <td align="center" width="50px" colspan="2">
            <asp:Button ID="Btn1" runat="server" Text="Submit" BackColor="#FFFFCC" 
            BorderColor="Black" Height="42px" Width="81px" onclick="Btn1_Click" 
                    BorderStyle="Ridge" />
            </td>
            <tr>
            <td>
            
             <asp:Button ID="Btn2" runat="server" Text="Show" BackColor="#FFFFCC" 
            BorderColor="Black" Height="42px" Width="81px" onclick="Btn2_Click" 
                    BorderStyle="Ridge"/>
            </td>
            
            </tr>
            </tr>
        <tr>
            <td align="center" width="50px" colspan="2">
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
        
            </td>
        </tr>
        
        
        </table>
    </div>
    </form>
</body>
</html>
