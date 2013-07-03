<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entity_Master.aspx.cs" Inherits="Entity_Master" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="globalStyle.css" rel="Stylesheet" type="text/css" />
</head>
<body class="main">
    <form id="form1" runat="server">
    <div>
    
        
        <table align="center" class="curvedEdges">
            <tr>
                <td  >
    
        <asp:Label ID="lblentitycode" runat="server" Text="Entity Code :" Font-Bold="False" Font-Names="Trebuchet MS"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textentitycode" runat="server" Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textentitycode_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textentitycode" WatermarkText="Enter Entity Code" WatermarkCssClass="watermark"> 
                    </asp:TextBoxWatermarkExtender>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="textentitycode" ErrorMessage="Enter code" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
        
        <asp:Label ID="lblentityname" runat="server" Text="Entity Name :" Font-Names="Trebuchet MS"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textentityname" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="textentityname" ErrorMessage="Enter name" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
        
        
            <tr>
                <td >
        <asp:Label ID="lbladdress" runat="server" Text="Entity Address :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="textaddress" ErrorMessage="Enter address" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
        
        <asp:Label ID="lbleffectivefrom" runat="server" Text="Effective From :"></asp:Label>
                </td>
                <td >
                 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" 
                        EnableViewState="False">
                    </asp:ToolkitScriptManager>
                    <asp:TextBox ID="texteffectivefrom" runat="server"  Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="texteffectivefrom_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="texteffectivefrom" WatermarkText="click to pick a date" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                    <asp:CalendarExtender    ID="CalendarExtender1"    TargetControlID="texteffectivefrom"    runat="server" 
                    Format="yyyy/MM/dd HH:mm:ss"/>  
                   
                </td>
                
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="texteffectivefrom" ErrorMessage="Enter From Date" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                   
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="texteffectivefrom" ErrorMessage="improper date format" 
                        Font-Size="Small" 
                        
                        ValidationExpression="^[0-9]{4}/[01|2][0-9]/[0-3][0-9]\s*\d{2}:\d{2}:\d{2}$"></asp:RegularExpressionValidator>
                   
                </td>
                
            </tr>
            <tr>
                <td >
        
       <asp:Label ID="lbleffectiveto" runat="server" Text="Effective To :"></asp:Label>
                </td>
                <td >
                   
                    <asp:TextBox ID="texteffectiveto" runat="server"  Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="texteffectiveto_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="texteffectiveto" WatermarkText="click to pick a date" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                    <asp:CalendarExtender ID="texteffectiveto_calenderExtender" runat="server"  TargetControlID="texteffectiveto" Format="yyyy/MM/dd HH:mm:ss">
                    </asp:CalendarExtender>
                </td>
                <td >
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="texteffectiveto" ErrorMessage="Enter To date" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="texteffectivefrom" ErrorMessage="improper date format" 
                        Font-Size="Small" 
                        ValidationExpression="^[0-9]{4}/[01|2][0-9]/[0-3][0-9]\s*\d{2}:\d{2}:\d{2}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
      
       
            <tr>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:ImageButton  ID="savebutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/savebutton.png" Width="88px" 
                        onclick="savebutton_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="cancelbutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/cancelbutton.png" Width="88px" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;
        <br />
        <asp:Label ID="errorlbl" runat="server"></asp:Label>
        <br />
      </div>
    </form>
</body>
</html>
