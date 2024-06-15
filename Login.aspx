<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_ChitFund_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 25%;
            height: 80px;
            position: absolute;
            top: 223px;
            left: 434px;
            z-index: 1;
            border: 4px double #008000;
            padding: 1px 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>User&nbsp; ID</td>
                    <td>
                        <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_admin" runat="server" Text="Admin" OnClick="btn_admin_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn_member" runat="server" Text="Member" OnClick="btn_member_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Guest" runat="server" Text="Guest" OnClick="Guest_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
