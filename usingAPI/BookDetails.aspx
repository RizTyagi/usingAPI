<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="BookDetails.aspx.cs" Inherits="usingAPI.BookDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>List Of Books available in Library</h3>
             <asp:Literal ID="litTable" runat="server" />
            
        </div>
    </form>
</body>
</html>
