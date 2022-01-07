<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDrug.aspx.cs" Inherits="pharmacy_system.AddDrug" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			text-align: center;
		}
		.auto-style2 {
			width: 100%;
		}
		.auto-style3 {
			width: 559px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        	<strong>Add New Drug<br />
			</strong>
			<table class="auto-style2">
				<tr>
					<td class="auto-style3">Drug Name</td>
					<td>
						<asp:TextBox ID="DrugName" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3">Effective Material</td>
					<td>
						<asp:TextBox ID="EffectiveMaterial" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3">Price</td>
					<td>
						<asp:TextBox ID="Price" runat="server" TextMode="Number"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3">Usage</td>
					<td>
						<asp:TextBox ID="Usage" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3">Shape</td>
					<td>
						<asp:TextBox ID="Shape" runat="server"></asp:TextBox>
					</td>
				</tr>
				<tr>
					<td class="auto-style3">&nbsp;</td>
					<td>
						<asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add Drug" />
					</td>
				</tr>
				<tr>
					<td class="auto-style3">&nbsp;</td>
					<td>
						<asp:Button ID="Cancel" runat="server" OnClick="Cancel_Click" Text="Cancel" />
					</td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
