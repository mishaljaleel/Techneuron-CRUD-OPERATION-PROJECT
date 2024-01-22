<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminshowallemployees.aspx.cs" Inherits="Techneuron_CRUD_OPERATION_PROJECT.show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 803px;
            height: 346px;
            position: absolute;
            top: 69px;
            left: 228px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 35px;
            left: 570px;
            z-index: 1;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" PageSize="5" CssClass="auto-style1">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="NAME" />
                <asp:BoundField DataField="age" HeaderText="AGE" />
                <asp:BoundField DataField="discription" HeaderText="DESCRIPTION" />
                <asp:BoundField DataField="phone" HeaderText="PHONE" />
                <asp:TemplateField HeaderText="IMAGE">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="50px" Height="50px" ImageUrl='<%# Eval("image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="email" HeaderText="EMAIL" />
                <asp:BoundField DataField="username" HeaderText="USERNAME" ReadOnly="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="ALL EMPLOYEES"></asp:Label>
    </form>
</body>
</html>
