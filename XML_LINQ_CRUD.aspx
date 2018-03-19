<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XML_LINQ_CRUD.aspx.cs" Inherits="XML_CRUD.XML_LINQ_CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 162px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Height="123px" Width="583px">
        </asp:GridView>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp; ID&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtid" runat="server" Height="16px" Width="147px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" OnClick="Find" Text="Find By ID" />
&nbsp;
                    <asp:Button ID="Button5" runat="server" OnClick="delete_click" Text="Delete By ID" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp; Name&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="16px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp; Salary&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtsalary" runat="server" Height="16px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp; Email&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Height="16px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp; Address&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" Height="16px" Width="147px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Insert_Click" Text="Insert" />
&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Update_click" Text="Update" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
