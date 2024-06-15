<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Newid.aspx.cs" Inherits="Web_ChitFund_Project.Newid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 44%;
            height: 197px;
            position: absolute;
            top: 89px;
            left: 663px;
            z-index: 1;
        }
        .auto-style3 {
            width: 42%;
            height: 291px;
            position: absolute;
            top: 63px;
            left: 66px;
            z-index: 1;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style6 {
            position: absolute;
            top: 284px;
            left: 171px;
            z-index: 1;
            width: 76px;
            right: 990px;
        }
        .auto-style7 {
            position: absolute;
            top: 123px;
            left: 190px;
            z-index: 1;
            width: 74px;
        }
        .auto-style8 {
            height: 26px;
            width: 222px;
        }
        .auto-style9 {
            width: 222px;
        }
        .auto-style10 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 374px;
            left: 452px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style2">
            <tr>
                <td>User&nbsp; ID</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_userid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;Password</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_pwd" ErrorMessage="Can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>ReEnter Password</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_cpwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ForeColor="Red" ErrorMessage="Password Not Match" ControlToCompare="txt_pwd" ControlToValidate="txt_cpwd"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Join" CssClass="auto-style7" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style10">
            </asp:GridView>
        </div>
    <table class="auto-style3">
        <tr>
            <td class="auto-style8">Date</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Chit_ID</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_chitid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Member_ID</td>
            <td>
                <asp:TextBox ID="txt_memberid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">First Instalment Amount</td>
            <td>
                <asp:TextBox ID="txt_insamount" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Payment&nbsp; Mode</td>
            <td>
                <asp:RadioButton ID="rb_cash" runat="server" Text="Cash" GroupName="paymode" AutoPostBack="True" />
                <asp:RadioButton ID="rb_upi" runat="server" Text="UPI" GroupName="paymode" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Please Enter your&nbsp; UPI&nbsp;&nbsp; ID</td>
            <td>
                <asp:TextBox ID="txt_upi" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="View" Width="77px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <p>
            &nbsp;</p>
                <asp:Button ID="btn_pay" runat="server" CssClass="auto-style6" Text="Pay" />
    </form>
    </body>
</html>
