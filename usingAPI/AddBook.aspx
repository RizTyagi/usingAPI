<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="usingAPI.AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Index.aspx">goto Dashboard</a>
        <div style="width:50%;margin:0 auto;">
            <h2>Enter Book details</h2>
            <table>
                <tr>
                    <td>Enter Book Name :-</td>
                    <td>
                        <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBookName" ErrorMessage="*Required" ForeColor="Red" Display="Dynamic"  ValidationGroup="Insert"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Author's Name :-</td>
                    <td>
                        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAuthor" ErrorMessage="*Required" ForeColor="Red" Display="Dynamic"  ValidationGroup="Insert"></asp:RequiredFieldValidator>
              
                    </td>
                </tr>
                <tr>
                    <td>Enter Book Id <span>(Incase update)</span>:-</td>
                    <td>
                        <asp:TextBox ID="txtBooKId" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBooKId" ErrorMessage="*Required" ForeColor="Red" Display="Dynamic"  ValidationGroup="Update"></asp:RequiredFieldValidator>
          
                    </td>
                </tr>
                <tr >
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnInsert" runat="server" ValidationGroup="Insert" Text="Insert" OnClick="btnInsert_Click"/>
                   
                        <asp:Button ID="btnupdate" runat="server" ValidationGroup="Update" Text="Update" OnClick="btnupdate_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label runat="server" ID="lblerrro" Text=""></asp:Label>
                    </td>
                </tr>

            </table>
        </>
    </form>
</body>
</html>
