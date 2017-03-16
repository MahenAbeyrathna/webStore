<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewProducts.aspx.cs" Inherits="mywebstore.Admin.AddNewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table style="width:900px">
        <tr>
            <td colspan="2" style="text-align:center"> Add new Product</td>
        </tr>
        <tr>
            <td style="padding-left:30px">Product Name:</td>
            <td><asp:TextBox ID="productName" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr> 
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td style="padding-left:30px">Product Category:</td>
            <td><asp:DropDownList ID="ddlCategory" runat="server" Width="300px"></asp:DropDownList></td>
        </tr>
        <tr> 
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td style="padding-left:30px">Product Description:</td>
            <td><asp:TextBox ID="productDescription" runat="server" Width="300px" TextMode="MultiLine" Height="80px"></asp:TextBox></td>
        </tr>
        <tr> 
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td style="padding-left:30px">Product Image:</td>
            <td><asp:FileUpload ID="uploadProductPhoto" runat="server" Width="190px"/></td>
        </tr>
        <tr> 
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td style="padding-left:30px">Product Price</td>
            <td><asp:TextBox ID="productPrice" runat="server" Width="300px"></asp:TextBox></td>
        </tr>
        <tr> 
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="productSubmitButton" Text="Submit Product" Width="100px" runat="server" OnClick="productSubmitButton_Click"/></td>
        </tr>
    </table>
</asp:Content>
