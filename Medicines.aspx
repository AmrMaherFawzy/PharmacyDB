<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicines.aspx.cs" Inherits="WebApplication2.Medicines" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet2.css"/>
    <link rel="shortcut icon" href="icon/download.ico" type="image/x-icon">
    <script src="JS/JavaScript(M).js"></script>
    <title>PharmacyDB_[Medicines]</title>
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
    <form id="form1" runat="server">
        <h1>Medicines</h1>
        <div class="form-group">
            <label for="TextBox1">MedicineID</label>
            <asp:TextBox ID="TextBox1" runat="server" Width="710px" AutoCompleteType="Enabled"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox2">MedicineName </label>
            <asp:TextBox ID="TextBox2" runat="server" Width="710px"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox3">Manufacturer</label>
            <asp:TextBox ID="TextBox3" runat="server" Width="710px"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox4">Price</label>
            <asp:TextBox ID="TextBox4" runat="server" Width="710px"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox5">QuantityInStock</label>
            <asp:TextBox ID="TextBox5" runat="server" Width="710px"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="TextBox6">ExpiryDate</label>
            <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Date" CssClass="date-input" OnTextChanged="TextBoxDate_TextChanged" Width="721px" />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MedicineID" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="710px" CellPadding="4" GridLines="None" style="margin-top: 0px" AllowCustomPaging="True" AllowPaging="True" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MedicineID" HeaderText="MedicineID" ReadOnly="True" SortExpression="MedicineID" />
                    <asp:BoundField DataField="MedicineName" HeaderText="Medicine Name" SortExpression="MedicineName" />
                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="QuantityInStock" HeaderText="QuantityInStock" SortExpression="QuantityInStock" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
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
