<%@ Page Language="C#"   UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="JoinChit.aspx.cs" Inherits="Web_ChitFund_Project.Join_Chit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 405px;
            position: absolute;
            top: 171px;
            left: 72px;
            z-index: 1;
        }
        .auto-style2 {
            height: 68px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>Date Of Joining</td>
                <td>
                    <asp:TextBox ID="txt_doj" runat="server" OnTextChanged="txt_doj_TextChanged" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Name
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rb_male" runat="server"  GroupName="gender" Text="Male" AutoPostBack="True"  />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rb_female" runat="server" GroupName="gender" Text="Female" AutoPostBack="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Phone  No"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2"  ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txt_phone"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txt_phone" ValidationExpression="^\+?[1-9]\d{1,14}$" ForeColor="Red"  runat="server" ErrorMessage="Invalid Phone No"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" ControlToValidate="txt_email" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Chit&nbsp;&nbsp; Amount</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="drp_chitamount" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_chitamount_SelectedIndexChanged1">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;First
                    <asp:Label ID="Label1" runat="server" Text="Instalment  Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_instalment_amount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Chit&nbsp; ID</td>
                <td>
                    <asp:TextBox ID="txt_chitid" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Member ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_memberid" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBox ID="Check_agree" runat="server" Text="I  Agree" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                </td>
                <td>
                    <asp:TextBox ID="txt_agree" runat="server" Width="398px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Create" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
