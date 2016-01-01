<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntry.aspx.cs" Inherits="CountryCityManagementSystem.UI.CityEntry" validateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0"/>
 <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_editor.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
	<link rel="stylesheet" href="css/Style.css" type="text/css"/>
</head>
<body>
     
    <div class="container">
		<form id="form" runat="server">
			<div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Name</label>
					<div class="col-sm-4">
					  <input type="text" class="form-control" runat="server" id="cityNameTextBox" placeholder="City Name"/>
					</div>
				</div>
			 </div> 
			<div class="row about"> 
				<label for="about" class="col-sm-2 control-label about_text">About</label>
				<div class="col-sm-10">
					<textarea id="edit" runat="server"></textarea>
					</div>
			</div>	
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">No of dwellers</label>
					<div class="col-sm-4">
					  <input type="text" class="form-control" runat="server" id="noOfDwellerTextBox" placeholder="Dwellers"/>
					</div>
				</div>
			 </div> 
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Location</label>
					<div class="col-sm-4">
					  <input type="text" class="form-control" runat="server" id="locationTextBox" placeholder="Location"/>
					</div>
				</div>
			 </div> 
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Weather</label>
					<div class="col-sm-4">
					  <input type="text" class="form-control" runat="server" id="weatherTextBox" placeholder="Weather"/>
					</div>
				</div>
			 </div> 
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Country</label>
					<div class="col-sm-4">
					   <asp:DropDownList ID="countryDropDownList" runat="server"  Width="100%"></asp:DropDownList>
					</div>
				</div>
			 </div> 
		<div class="underbutton">
            <asp:Button ID="citySaveButton"  runat="server" Text="Save" OnClick="citySaveButton_Click" />  &nbsp;&nbsp;
            <asp:Button ID="countryCancleButton" runat="server" Text="Cancle" />
		</div>	

        <asp:Label ID="messageLabel" runat="server" Text="Label"></asp:Label>

            
    <div class="row">
        <asp:GridView ID="citysGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="SL#">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="About">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("About")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No.of dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("NoDwelers")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Country")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#cccccc" />
            <HeaderStyle BackColor="#cccccc" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#ccc" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
    </div>
         <div runat="server" id="showArticle"></div>
	   </form>
	</div>  


    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
 <script src="../Scripts/jquery-2.1.4.js"></script>
    <script src="../froala_editor_1.2.7/js/froala_editor.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/tables.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/lists.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/colors.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/media_manager.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_family.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_size.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/video.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/block_styles.min.js"></script>
    <script>
        $(function () {
            $('#edit').editable({ inlineMode: false, height: 300, alwaysBlank: true })
        });
  </script>
</body>
</html>
