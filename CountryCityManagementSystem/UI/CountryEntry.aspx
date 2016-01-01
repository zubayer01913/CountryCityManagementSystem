<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryEntry.aspx.cs" Inherits="CountryCityManagementSystem.UI.CountryEntry" validateRequest="false" %>

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
		<form id="form1" runat="server">
			<div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-1 control-label">Name</label>
					<div class="col-sm-4">
					  <input type="text" runat="server" class="form-control" id="conuntryNameTextBox" placeholder="Country Name"/>
					</div>
				</div>
			 </div> 
			<div class="row about"> 
				<label for="about" class="col-sm-1 control-label about_text">About</label>
				<div class="col-sm-11">
					 <textarea id="edit" runat="server"></textarea>
				</div>
			</div>	
		<div class="underbutton">
            <asp:Button ID="countrySaveButton"  runat="server" Text="Save" OnClick="countrySaveButton_Click" />  &nbsp;&nbsp;
            <asp:Button ID="countryCancleButton" runat="server" Text="Cancle" />
		</div>	

            <asp:Label ID="messageLabel" runat="server" Text="Label"></asp:Label>

            
    <div class="row">
        <asp:GridView ID="countrysGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="SL#">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="About">
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
