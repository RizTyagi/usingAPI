<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteBook.aspx.cs" Inherits="usingAPI.DeleteBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
           <a href="Index.aspx">goto Dashboard</a>
        <div>
            <h2>Delete Book </h2>
            <table>
                <tr>
                    <td>Enter Book Id :-</td>
                    <td>
                        <asp:TextBox ID="txtBookId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Delete" OnClick="btnInsert_Click"/>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblerrro" Text=""></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
