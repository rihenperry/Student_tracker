<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entity_Divisions.aspx.cs" Inherits="Entity_Divisions" %>

<%@ Register assembly="TimePicker" namespace="MKB.TimePicker" tagprefix="MKB" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="globalStyle.css" rel="Stylesheet" type="text/css" />
</head>
<body class="main">
    <form id="form1" runat="server">
    <div>
        
        <table align="center" class ="curvedEdges">
            <tr>
                <td class="style4">
                    <asp:Label ID="divisioncode" runat="server" Text="Division Code :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="textdivisioncode" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="textdivisioncode" ErrorMessage="Enter code" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblstarttime" runat="server" Text="Start Time :"></asp:Label>
                </td>
                <td class="style3" colspan="2">
                    <MKB:TimeSelector ID="TimeSelector1" runat="server" AmPm="AM" ToolTip="Enter time by double click"/>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblgracestarttime" runat="server" Text="Grace Start Time :"></asp:Label>
                </td>
                <td class="style3" colspan="2">
                    <MKB:TimeSelector ID="TimeSelector3" runat="server" ToolTip="Enter time by double click"/>
                    
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblendtime" runat="server" Text="End Time :"></asp:Label>
                </td>
                <td class="style3" colspan="2">
                    <MKB:TimeSelector ID="TimeSelector2" runat="server" ToolTip="Enter time by double click"/>
                    
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="lblgraceendtime" runat="server" Text="Grace End Time :"></asp:Label>
                </td>
                <td class="style3" colspan="2">
                    <MKB:TimeSelector ID="TimeSelector4" runat="server" ToolTip="Enter time by double click"/>
                    
                </td>
            </tr>
            <tr>
                <td class="style4" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td  colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
                        ImageUrl="~/Images/savebutton.png" Width="88px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="33px" 
                        ImageUrl="~/Images/cancelbutton.png" Width="88px" />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
