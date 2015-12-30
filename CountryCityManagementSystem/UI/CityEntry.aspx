<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntry.aspx.cs" Inherits="CountryCityManagementSystem.UI.CityEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"/>
  <link rel="stylesheet" href="css/froala_editor.css"/>
  <link rel="stylesheet" href="css/froala_style.css"/>
  <link rel="stylesheet" href="css/plugins/code_view.css"/>
  <link rel="stylesheet" href="css/plugins/colors.css"/>
  <link rel="stylesheet" href="css/plugins/emoticons.css"/>
  <link rel="stylesheet" href="css/plugins/image_manager.css"/>
  <link rel="stylesheet" href="css/plugins/image.css"/>
  <link rel="stylesheet" href="css/plugins/line_breaker.css"/>
  <link rel="stylesheet" href="css/plugins/table.css"/>
  <link rel="stylesheet" href="css/plugins/char_counter.css"/>
  <link rel="stylesheet" href="css/plugins/video.css"/>
  <link rel="stylesheet" href="css/plugins/fullscreen.css"/>
  <link rel="stylesheet" href="css/plugins/file.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css"/>
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
					  <input type="text" class="form-control" id="conuntryName" placeholder="Country Name"/>
					</div>
				</div>
			 </div> 
			<div class="row about"> 
				<label for="about" class="col-sm-2 control-label about_text">About</label>
				<div class="col-sm-10">
					<div id='edit' style="margin-top: 30px;">
					<h1>Full Featured</h1>
					</div>
				</div>
			</div>	
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">No of dwellers</label>
					<div class="col-sm-4">
					  <input type="text" class="form-control" id="conuntryName" placeholder="Country Name"/>
					</div>
				</div>
			 </div> 
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Location</label>
					<div class="col-sm-4">
					  <input type="text" class="form-control" id="conuntryName" placeholder="Country Name"/>
					</div>
				</div>
			 </div> 
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Weather</label>
					<div class="col-sm-4">
					  <input type="text" class="form-control" id="conuntryName" placeholder="Country Name"/>
					</div>
				</div>
			 </div> 
            <div class="row name">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">Country</label>
					<div class="col-sm-4">
					   <asp:DropDownList ID="countryDropDownList" runat="server"></asp:DropDownList>
					</div>
				</div>
			 </div> 
		<div class="underbutton">
            <asp:Button ID="countrySaveButton"  runat="server" Text="Save" />  &nbsp;&nbsp;
            <asp:Button ID="countryCancleButton" runat="server" Text="Cancle" />
		</div>	

        

            
    <div class="row">
        <asp:GridView ID="studentsGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
                <asp:TemplateField HeaderText="No.of dwellers">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CountryAbout")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
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

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>

  <script type="text/javascript" src="js/froala_editor.min.js" ></script>

  <script type="text/javascript" src="js/plugins/align.min.js"></script>
  <script type="text/javascript" src="js/plugins/code_beautifier.min.js"></script>
  <script type="text/javascript" src="js/plugins/code_view.min.js"></script>
  <script type="text/javascript" src="js/plugins/colors.min.js"></script>
  <script type="text/javascript" src="js/plugins/emoticons.min.js"></script>
  <script type="text/javascript" src="js/plugins/font_size.min.js"></script>
  <script type="text/javascript" src="js/plugins/font_family.min.js"></script>
  <script type="text/javascript" src="js/plugins/image.min.js"></script>
  <script type="text/javascript" src="js/plugins/file.min.js"></script>
  <script type="text/javascript" src="js/plugins/image_manager.min.js"></script>
  <script type="text/javascript" src="js/plugins/line_breaker.min.js"></script>
  <script type="text/javascript" src="js/plugins/link.min.js"></script>
  <script type="text/javascript" src="js/plugins/lists.min.js"></script>
  <script type="text/javascript" src="js/plugins/paragraph_format.min.js"></script>
  <script type="text/javascript" src="js/plugins/paragraph_style.min.js"></script>
  <script type="text/javascript" src="js/plugins/video.min.js"></script>
  <script type="text/javascript" src="js/plugins/table.min.js"></script>
  <script type="text/javascript" src="js/plugins/url.min.js"></script>
  <script type="text/javascript" src="js/plugins/entities.min.js"></script>
  <script type="text/javascript" src="js/plugins/char_counter.min.js"></script>
  <script type="text/javascript" src="js/plugins/inline_style.min.js"></script>
  <script type="text/javascript" src="js/plugins/save.min.js"></script>
  <script type="text/javascript" src="js/plugins/fullscreen.min.js"></script>
  <script type="text/javascript" src="js/plugins/quote.min.js"></script>

  <script>
      $(function () {
          $('#edit').froalaEditor()
      });
  </script>
</body>
</html>
