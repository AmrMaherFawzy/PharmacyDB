<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="CSS/StyleSheet3.css" />
    <link rel="shortcut icon" href="icon/download.ico" type="image/x-icon">
    <script src="JS/JavaScript(R).js"></script>
    <title>PharmacyDB[Reports]</title>
    <style type="text/css">
        .auto-style1 {}
    </style>
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
    <form id="form1" style="width:100%" runat="server">
        <h1>Reports</h1>
        <div style="position:center;margin:5px,5px,5px,5px;">        
         <asp:Label ID="Label2" runat="server" Text="Search"></asp:Label>
          <br />
          <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Date" CssClass="date-input" OnTextChanged="TextBoxDate_TextChanged" Width="750px"></asp:TextBox>
         <br /><br />
         <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Search" Width="774px" Height="45px" CssClass="auto-style1" />
            <br />
         <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SaleID" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="710px" CellPadding="4" GridLines="None" style="margin-top: 0px" AllowCustomPaging="True" AllowPaging="True">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="SaleID" HeaderText="SaleID" ReadOnly="True" SortExpression="MedicineID" />
             <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" SortExpression="SaleDate" />
             <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
             <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
             <asp:BoundField DataField="MedicineID" HeaderText="MedicineID" SortExpression="MedicineID" />
             <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" SortExpression="MedicineName" />
             <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
              <asp:BoundField DataField="MedicinePrice" HeaderText="MedicinePrice" SortExpression="MedicinePrice" />
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
              <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
              <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
              <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
              <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
        <div class="grid-view">
   </div>
    </form>

</body>
</html>
