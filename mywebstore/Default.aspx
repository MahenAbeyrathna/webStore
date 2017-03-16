<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mywebstore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .style1{
            width:900px;
        }
        .style2{
            width:633px;
            text-align:left;
        }
        .style3{
            width:257px;
            text-align:center;
        }
        .style4 {
            width:185px;
            text-align:center;
        }
        .style6{
            width:260px;
            text-align:left;
        }
        .style7{
            width:427px;
            text-align:center;
        }
        .style8{
            width:108px;
            text-align:center;
        }
        .auto-style1 {
            width: 590px;
            text-align: left;
        }
        .auto-style2 {
            width: 132px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
                  <table class="style1">
                    <tr>
                         <td>
                             <table class="style1" style="border-bottom-style:ridge;border-width:medium;border-color:#9933FF">
                                 <tr>
                                     <td class ="auto-style2" rowspan="2">
                                         <asp:Image ID="Image1" runat="server" Width="200px" Height="53px" ImageUrl="~/Images/ShoppingCartProject.png" />
                                         &nbsp;
                                     </td>
                                     <td class="auto-style1" rowspan="2" style="text-align:center">
                                         <asp:LinkButton ID="lblLogo" runat="server" Text="ShoppingCart" Width="260px" Font-Names="Eras Demi ITC" Font-Size="20pt" ForeColor="#6600CC" OnClick="lblLogo_Click"></asp:LinkButton>
                                         <br />
                                         For Those Who Love Shopping
                                     </td>
                                     <td class="style7" rowspan="2">
                                         <asp:Image ID="image3" runat="server" Height="67px" ImageUrl="~/Images/shoppingcart.png" Width="133px"/>
                                     </td>
                                     <td class="style7" rowspan="2">
                                         <asp:Image ID="image2" runat="server" Height="53px" ImageUrl="~/Images/shopping-cart-icon.png" Width="113px"/>
                                     </td>
                                     <td>
                                         <asp:LinkButton ID="btnShoppingCart" runat="server" Font-Underline="false" Font-Size="20pt" ForeColor="Red" OnClick="btnshoppingcart_click">0</asp:LinkButton>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="style3" >
                                         &nbsp;
                                     </td>
                                 </tr>
                             </table>
                         </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1" style="border: thin ridge #9900FF">
                                <tr>
                                    <td class=" style2" >
                                        &nbsp;
                                        <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="#6600CC"></asp:Label>
                                    </td>
                                    <td class="style3" style="border-left-style:ridge;border-width:thin;border-color:#9900FF" >
                                        &nbsp;
                                        <asp:label ID="lblProducts" runat="server" Text="Products" Font-Size="15pt" ForeColor="#6600CC"></asp:label>
                                        
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1">
                                <tr>
                                    <td class="style2" >
                                        <asp:Panel ID="pnlProducts" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px">
                                            <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" Width="600px" Font-Bold="false" Font-Italic="false" Font-Overline="false" Font-Strikeout="false" Font-Underline="false">
                                                <ItemTemplate>
                                                    <div >
                                                        <table class="style4" style="border:1px ridge #9900FF">
                                                            <tr>
                                                                <td style=" border-bottom-style:ridge;border-width:1px;border-color:#000000">
                                                                    <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name")%>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <img  alt="" src='<%# Bind("ImageUrl")%>' runat="server" id="imgProductPhoto" style="border:ridge 1px black;width:173px;height:160px"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Price: <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price")%>'></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button  ID="btnAddToCart" runat="server" CommandArgument='<%# Bind("ProductId")%>' OnClick="btnAddToCart_Click" Text="Add To cart" Width="100%" BorderColor="Black" 
                                                                        BorderStyle="Inset" BorderWidth="1px"/>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </asp:Panel>
                                       <asp:Panel ID="pnlMyCart" runat="server" ScrollBars="Auto" Height="500px" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Visible="false" >
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:DataList ID="dlCartProducts" runat="server" RepeatColumns="3" Font-Bold="false" Font-Italic="false" Font-Overline="false" Font-Strikeout="false" Font-Underline="false" Width="551px" >
                                                            <ItemTemplate>
                                                                <div>
                                                                    <table style="border-bottom-style:ridge;border-width:1px;border-color:#000000">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("Name")%>'>
                                                                                </asp:Label> 
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                             <td>
                                                                                 <img  alt="" src='<%# Bind("ImageUrl")%>' runat="server" id="imgProductPhoto" style="border:ridge 1px black;width:173px;height:160px"/>
                                                                              </td>
                                                                         </tr>
                                                                         <tr>
                                                                              <td>
                                                                                 Price: <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price")%>'></asp:Label>
                                                                                 Total: <asp:Label ID="lblTotalProducts" runat="server"></asp:Label>
                                                                             </td>
                                                                          </tr>
                                                                          <tr>
                                                                             <td>
                                                                                 <asp:Button  ID="btnRemoveFromCart" runat="server" CommandArgument='<%# Bind("ProductId")%>' OnClick="btnRemoveFromCart_click" Text="Remove From Cart" Width="100%" BorderColor="Black" 
                                                                                  BorderStyle="Inset" BorderWidth="1px"/>
                                                                            </td>
                                                                         </tr>
                                                                    </table>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:DataList>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td class="style3">
                                        <asp:Panel ID="pnlCategories" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Height="500px" ScrollBars="Auto">
                                            <asp:DataList ID="dlCategories" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="251px">
                                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                                <HeaderStyle BackColor="#CC3333" Font-Bold="true" ForeColor="White" />
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lbtnCategory" runat="server" CommandArgument='<%# Bind("CategoryId")%>' OnClick="lbtnCategory_click" Text='<%# Bind("CategoryName")%>'></asp:LinkButton>
                                                </ItemTemplate>
                                                <SelectedItemStyle BackColor="#CC3333" Font-Bold="true" ForeColor="White" />
                                            </asp:DataList>
                                        </asp:Panel>
                                        <asp:Panel ID="pnlCheckOut" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Hegiht="500px" ScrollBars="Auto" Visible="false">
                                            <table style="width:258px">
                                                <tr>
                                                    <td>Name: </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                     </td>
                                  </tr>
                                <tr>
                                        <td colspan="2" style="border: thin ridge #9900FF;text-align:center">
                                            &nbsp;&copy;<a href="http://google.com">mahens.com</a>
                                            || <a href="Admin/Login.aspx">Admin Panel</a>
                                        </td>
                                    </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
