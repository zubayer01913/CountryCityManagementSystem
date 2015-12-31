<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCities.aspx.cs" Inherits="CountryCityManagementSystem.UI.ViewCities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

 <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
	<link rel="stylesheet" href="css/Style.css" type="text/css"/>
</head>
<body>
     
    <div class="container">
		<form id="form1" runat="server">
			<div class="row name">
				<div class="form-group">
                    <label for="name" class="col-sm-2 control-label"><asp:RadioButton ID="cityNameRadioButton" runat="server" />City Name </label>
					<div class="col-sm-3">
					  <input type="text" class="form-control" id="cityNameTextBox" placeholder="Country Name"/>
					</div>
				</div>
			 </div> 
            <div class="row name">
				<div class="form-group">
                    <label for="name" class="col-sm-2 control-label"><asp:RadioButton ID="RadioButton1" runat="server" />Country </label>
					<div class="col-sm-3">
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
					</div>
                    <div class="col-sm-4">
                        <asp:Button ID="Button1" runat="server" Text="Search" />
					</div>
				</div>
			 </div> 

        

            
    <div class="row">
        <asp:GridView ID="viewCitiesGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnPageIndexChanging="viewCitiesGridView_PageIndexChanging" OnSelectedIndexChanged="viewCitiesGridView_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="SL#">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No. of city dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Weather">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="About Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </div>

	   </form>
	</div>  


    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
