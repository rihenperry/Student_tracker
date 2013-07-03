<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Uid_Master.aspx.cs" Inherits="Uid_Master" %>

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
                <td class="style2">
                    <asp:Label ID="lbluidcode" runat="server" Text="UID Code :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="textuidcode" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="textuidcode" ErrorMessage="Enter code" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblactivateddate" runat="server" Text="Activated Date :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="textactivateddate" runat="server" Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textactivateddate_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textactivateddate" WatermarkText="click to pick up a date" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                    <asp:CalendarExtender ID="textactivateddate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="textactivateddate" Format="yyyy/MM/dd HH:mm:ss">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="textactivateddate" ErrorMessage="improper date format" 
                        Font-Size="Small" 
                        ValidationExpression="^[0-9]{4}/[01|2][0-9]/[0-3][0-9]\s*\d{2}:\d{2}:\d{2}$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="textactivateddate" ErrorMessage="enter date" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblexpirydate" runat="server" Text="Expiry Date :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="textexpirydate" runat="server" Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textexpirydate_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textexpirydate" WatermarkText=" click to pick up a date" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                    <asp:CalendarExtender ID="textexpirydate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="textexpirydate" Format="yyyy/MM/dd HH:mm:ss">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="textexpirydate" ErrorMessage="improper date format" 
                        Font-Size="Small" 
                        ValidationExpression="^[0-9]{4}/[01|2][0-9]/[0-3][0-9]\s*\d{2}:\d{2}:\d{2}$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="textexpirydate" ErrorMessage="enter date" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblremarks" runat="server" Text="Remarks :"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="textremarks" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="textremarks" ErrorMessage="Enter reamrks" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  colspan="3">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" 
                        EnableViewState="False">
                    </asp:ToolkitScriptManager>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
                        ImageUrl="~/Images/savebutton.png" Width="88px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="33px" 
                        ImageUrl="~/Images/cancelbutton.png" Width="88px" />
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
