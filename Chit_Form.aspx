<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chit_Form.aspx.cs" Inherits="Web_ChitFund_Project.Chit_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 26%;
            height: 122px;
            position: absolute;
            top: 185px;
            left: 223px;
            z-index: 1;
        }
        .auto-style2 {
            width: 210px;
        }
        .auto-style3 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 184px;
            left: 777px;
            z-index: 1;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 210px;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Chit_ID</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_chit_id" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Chit_Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_chit_name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Chit_Amount</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="drop_amount" runat="server">
                            <asp:ListItem>---Amount---</asp:ListItem>
                            <asp:ListItem>100000</asp:ListItem>
                            <asp:ListItem>200000</asp:ListItem>
                            <asp:ListItem>300000</asp:ListItem>
                            <asp:ListItem>500000</asp:ListItem>
                            <asp:ListItem>1000000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn_add" runat="server" Text="ADD" OnClick="btn_add_Click" />
                    </td>
                    <td class="auto-style2">
&nbsp;
                        </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Chit_ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="Chit_Id" runat="server" Text='<%# Bind("Chit_Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Chit_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Chit_Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="Chit_Name" runat="server" Text='<%# Bind("Chit_Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Chit_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Chit_Amount">
                    <EditItemTemplate>
                        <asp:TextBox ID="Chit_Amount" runat="server" Text='<%# Bind("Chit_Amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Chit_Amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" HeaderText="Edit">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
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
    </form>
</body>
</html>
