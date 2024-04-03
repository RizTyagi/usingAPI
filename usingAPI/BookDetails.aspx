<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="BookDetails.aspx.cs" Inherits="usingAPI.BookDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
           <a href="Index.aspx">goto Dashboard</a>
        <div>
            <h3>List Of Books available in Library</h3>
            <table>
                <tr>
                    <td><span>Get All Book list on oneClick</span></td>
                    <td>
                        <asp:Button ID="btngetAll" runat="server" Text="Get All" OnClick="BtngetAll_Click" />
                           <asp:Label ID="lblerror1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr id="TrAll" runat="server">
                    <td colspan="2">
                        <asp:Literal ID="litTable" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h2>OR</h2>
                    </td>
                </tr>
                <tr>
                    <td><span>Enter Book Id: </span>
                        <asp:TextBox ID="txtbookId" runat="server" TextMode="Number" MaxLength="2"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnbookId" runat="server" Text="Find" OnClick="BtnbookId_Click" /></td>
                    <asp:Label ID="lblerror2" runat="server" Text=""></asp:Label>
                </tr>
                <tr id="trId" runat="server">
                    <td colspan="2">
                        <asp:Literal ID="Literal1" runat="server" />
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
