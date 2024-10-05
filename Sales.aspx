<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="WebApplication2.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/StyleSheet2.css" rel="stylesheet" />
    <link rel="shortcut icon" href="icon/download.ico" type="image/x-icon">
    <script src="JS/JavaScript(S).js"></script>
    <title>PharmacyDB_[Sales]</title>
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
        <h1>Sales</h1>

        <div class="form-group">
            <label for="TextBox1">SaleID</label>
            <asp:TextBox ID="TextBox1" runat="server" Width="710px" AutoCompleteType="Enabled"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="TextBox2">CustomerID</label>
            <asp:TextBox ID="TextBox2" runat="server" Width="710px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="TextBox3">MedicineID</label>
            <asp:TextBox ID="TextBox3" runat="server" Width="710px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="TextBox4">TotalPrice</label>
            <asp:TextBox ID="TextBox4" runat="server" Width="710px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="TextBox5">Quantity</label>
            <asp:TextBox ID="TextBox5" runat="server" Width="710px"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="TextBoxDate">SaleDate</label>
            <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Date" CssClass="date-input" OnTextChanged="TextBoxDate_TextChanged" Width="721px"></asp:TextBox>
        </div>

        <div class="buttons">
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" Width="100px" />
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" Width="100px" />
            <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" Width="100px" />
            <asp:Button ID="Button5" runat="server" Text="Delete All" OnClick="Button5_Click" Width="100px" />
            <br /><br />
        </div>

        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox7" runat="server" Width="710px" AutoCompleteType="Search"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" Width="710px" Height="45px" />
            <br />
        </div>

        
    <div class="grid-view">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SaleID" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="710px" CellPadding="4" GridLines="None" style="margin-top: 0px" AllowCustomPaging="True" AllowPaging="True" HorizontalAlign="Center">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="SaleID" HeaderText="SaleID" ReadOnly="True" SortExpression="SaleID" />
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
              <asp:BoundField DataField="MedicineID" HeaderText="MedicineID" SortExpression="MedicineID" />
              <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
              <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" SortExpression="SaleDate" />
              <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />

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
