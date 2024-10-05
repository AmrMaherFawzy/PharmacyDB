<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet2.css" />
    <link rel="shortcut icon" href="icon/download.ico" type="image/x-icon">
    <script src="JS/JavaScript(C).js"></script>
    <title>PharmacyDB_[Customers]</title>
</head>
<body>
    <header>
        <ul>
            <li><a href="Home.html">Home</a></li>
            <li><a href="Customers.aspx">Customers</a></li>
            <li><a href="Medicines.aspx">Medicines</a></li>
            <li><a href="Sales.aspx">Sales</a></li>
             <li><a href="Reports.aspx">Reports</a></li>
        </ul>
    </header>
    <form id="form1" runat="server" method="post">
        <h1>Customers</h1>
        <div class="form-group">
            <label for="TextBox1">CustomerID</label>
            <asp:TextBox ID="TextBox1" runat="server" Width="710px" AutoCompleteType="Enabled"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox2">FirstName </label>
            <asp:TextBox ID="TextBox2" runat="server" Width="710px" AutoCompleteType="FirstName"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox3">LastName</label>
            <asp:TextBox ID="TextBox3" runat="server" Width="710px" AutoCompleteType="LastName"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox4">PhoneNumber</label>
            <asp:TextBox ID="TextBox4" runat="server" Width="710px" AutoCompleteType="HomePhone"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox5">Email</label>
            <asp:TextBox ID="TextBox5" runat="server" Width="710px" AutoCompleteType="Email"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox6">Address</label>
            <asp:TextBox ID="TextBox6" runat="server" Width="710px" AutoCompleteType="HomeStreetAddress"></asp:TextBox>
        </div>
        <div class="buttons">
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" Width="100px" />
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" Width="100px" />
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" Width="100px" />
            <asp:Button ID="Button5" runat="server" Text="DeleteAll" OnClick="Button5_Click" Width="100px" />
            <br />
            <br />
        </div>

        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text=" Research"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox7" runat="server" Width="710px" AutoCompleteType="Search"></asp:TextBox>
            <br />
            <br />
            <asp:Button class="buttons" ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" Width="710px" Height="45px" style="margin-right: 0px" />
            <br />
           </div>
        <div class="grid-view">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="709px" CellPadding="4" GridLines="None" style="margin-top: 0px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                </Columns>
                <EditRowStyle BorderStyle="Dotted" BackColor="#2461BF" />
                <FooterStyle Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000066" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
