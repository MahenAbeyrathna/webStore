<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddEditCategory.aspx.cs" Inherits="mywebstore.Admin.AddEditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table style="width:900px">
        <tr>
            <td colspan="2" style="text-align:center"> Add New Category</td>
        </tr>
        <tr><td>&nbsp</td></tr>
        <tr>
            <td style="padding-left:30px">Category Name:</td>
            <td><asp:TextBox ID="categoryname" runat="server"></asp:TextBox></td>
        </tr>
        <tr><td>&nbsp</td></tr>
        <tr>
            <td>&nbsp</td>
            <td><asp:Button ID="submitCategory" runat="server" Text="Submit" OnClick="submitCategory_Click"/></td>
        </tr>
        <tr><td>&nbsp</td></tr>
    </table>
</asp:Content>
