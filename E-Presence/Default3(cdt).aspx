<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default3(cdt).aspx.vb" Inherits="Default3_cdt_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Label ID="Label1" runat="server">2:00:00</asp:Label>
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
        </asp:Timer>
    </ContentTemplate>
</asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
