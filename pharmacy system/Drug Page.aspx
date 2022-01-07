<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Drug Page.aspx.cs" Inherits="pharmacy_system.Drug_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		
		<div>
				<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:HyperLink ID="Home" runat="server" Font-Bold="True" NavigateUrl="~/home page.aspx">Home</asp:HyperLink>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <asp:HyperLink ID="AddDrug" runat="server" Font-Bold="True" NavigateUrl="~/AddDrug.aspx">Add New Drug</asp:HyperLink>
			</span>
		</div>
        <div>
        	<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
					<asp:BoundField DataField="Drug Name" HeaderText="Drug Name" SortExpression="Drug Name" />
					<asp:BoundField DataField="Effective Material" HeaderText="Effective Material" SortExpression="Effective Material" />
					<asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
					<asp:BoundField DataField="Usage" HeaderText="Usage" SortExpression="Usage" />
					<asp:BoundField DataField="Shape" HeaderText="Shape" SortExpression="Shape" />
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
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Drug]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
