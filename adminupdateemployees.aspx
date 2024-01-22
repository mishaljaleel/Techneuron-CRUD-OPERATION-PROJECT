<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminupdateemployees.aspx.cs" Inherits="Techneuron_CRUD_OPERATION_PROJECT.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 607px;
            height: 181px;
            position: absolute;
            top: 98px;
            left: 294px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 39px;
            left: 534px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="name" HeaderText="NAME" />
                <asp:BoundField DataField="age" HeaderText="AGE" />
                <asp:BoundField DataField="discription" HeaderText="DISCRIPTION" />
                <asp:BoundField DataField="phone" HeaderText="PHONE" />
                <asp:BoundField DataField="email" HeaderText="EMAIL" />
                <asp:CommandField HeaderText="EDIT" ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="EMPLOYEE UPDATION"></asp:Label>
    </form>
</body>
</html>
