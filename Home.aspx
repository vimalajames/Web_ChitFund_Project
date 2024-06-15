<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_ChitFund_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 54%;
            height: 80px;
            position: absolute;
            top: 157px;
            left: 263px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem NavigateUrl="Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="Chit_Form.aspx" Text="Create  Chit  " Value="Create  Chit  "></asp:MenuItem>
                    <asp:MenuItem Text="Chit Funds" Value="Chit Funds" NavigateUrl="Chitfund_details.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="Join_Chit.aspx" Text="Join Chit" Value="Join Chit"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="Auction _Form.aspx" Text="Bit Chit" Value="Bit Chit"></asp:MenuItem>
                    <asp:MenuItem Text="Reports" Value="Reports" NavigateUrl="Report_Form.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="About  Us" Value="About  Us" NavigateUrl="About_us.aspx"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle BackColor="#9999FF" BorderStyle="None" HorizontalPadding="50px" VerticalPadding="10px" />
            </asp:Menu>
        </div>
    </form>
</body>
</html>
