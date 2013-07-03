<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
    
        <br />
    
        <table align="center" class="curvedEdges">
            <tr>
                <td colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="86px" Width="159px" 
                        ImageUrl="~/Images/tracker.gif" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblentitycode" runat="server" Text="Entity Code :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textlogincode" runat="server" MaxLength="15" Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textlogincode_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textlogincode" WatermarkText="Enter entity code" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="textlogincode" ErrorMessage="Enter code" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblloginname" runat="server" Text="Login Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textloginname" runat="server" MaxLength="15" Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textloginname_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textloginname" WatermarkText="Enter Login name" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="textloginname" ErrorMessage="Enter login name" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textloginpassword" runat="server" MaxLength="15" 
                        TextMode="Password" Width="181px" ToolTip="Max 15 characters"></asp:TextBox>
                   
                    
                    <asp:TextBoxWatermarkExtender ID="textloginpassword_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textloginpassword" WatermarkText="Enter password" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                   
                    
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="textloginpassword" ErrorMessage="Enter password" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                   
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblerror" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:ImageButton ID="loginbutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/loginbutton.png" Width="88px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="cancelbutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/cancelbutton.png"  
                        Width="88px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" 
                        Font-Italic="False" Font-Names="Times New Roman">forgot password ?</asp:HyperLink>
                    &nbsp;</td>
            </tr>
        </table>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ToolkitScriptManager 
            ID="ToolkitScriptManager1" runat="server" EnableViewState="False">
        </asp:ToolkitScriptManager>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
