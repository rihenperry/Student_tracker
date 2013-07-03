<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Master.aspx.cs" Inherits="Student_Master" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="globalStyle.css" rel="Stylesheet" type="text/css" />
</head>
<body class="main">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table align="center" class="curvedEdges" frame="border" >
            <tr>
                <td class="style4" >
    
        <asp:Label ID="lblstudentcode" runat="server" Text="Student Code :" Font-Bold="False" 
                        Font-Names="Trebuchet MS"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="textstudentcode" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="textstudentcode" ErrorMessage="enter code" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
        
        <asp:Label ID="lblfirstname" runat="server" Text="First Name :" Font-Names="Trebuchet MS"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textfirstname" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td class="style2" >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="textfirstname" ErrorMessage="invalid name" Font-Size="Small" 
                        ValidationExpression="^([A-Z]|[a-z]){1}[a-z]+$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="textfirstname" ErrorMessage="enter first name" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
        
        <asp:Label ID="lblmiddlename" runat="server" Text="Middle Name :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textmiddlename" runat="server"  Width="181px"></asp:TextBox>
                </td>
                <td class="style2" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="textmiddlename" ErrorMessage="Enter mid name" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
        
        <asp:Label ID="lbllastname" runat="server" Text="Last Name :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textlastname" runat="server"  Width="181px"></asp:TextBox>
                </td>
                <td class="style2" >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="textlastname" ErrorMessage="invalid last name" 
                        Font-Size="Small" ValidationExpression="^([A-Z]|[a-z]){1}[a-z]+$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="textlastname" ErrorMessage="Enter last name" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
        <asp:Label ID="lbladdress" runat="server" Text="Addrerss :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style2" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="textaddress" ErrorMessage="Enter address" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
        
        <asp:Label ID="lblguardianname" runat="server" Text="Guardian Name :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textguardianname" runat="server"  Width="181px"></asp:TextBox>
                </td>
                <td class="style2" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="textguardianname" ErrorMessage="Enter name" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" >
        
        <asp:Label ID="lblphone" runat="server" Text="Phone LL :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textphone"  runat="server"  Width="181px" > </asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textphone_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textphone" 
                        WatermarkText="eg : 0250-1234567" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                </td>
                <td class="style2" >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="textphone" ErrorMessage="invalid no" 
                        ValidationExpression="^[0-9]\d{2,4}-\d{6,8}$" Font-Size="Small"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="textphone" ErrorMessage="enter number" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" >
      
        <asp:Label ID="lblmobile1" runat="server" Text="Mobile 1 :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textmobile1" runat="server"  Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textmobile1_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textmobile1" 
                        WatermarkText="10 digit mobile number" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                </td>
                <td class="style2" >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="textmobile1" ErrorMessage="invalid no" 
                        ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" 
                        Font-Size="Small"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="textmobile1" ErrorMessage="Enter mobile number" 
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" >

          <asp:Label ID="lblmoboile2" runat="server" Text="Mobile 2 :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textmobile2" runat="server"  Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textmobile2_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textmobile2" 
                        WatermarkText="optional" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                </td>
                <td class="style2" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" >
         <asp:Label ID="lblemail" runat="server" Text="Email :"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="textemail" runat="server"  Width="181px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="textemail_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textemail" WatermarkText="eg: xyz@gmail.com" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                </td>
                <td class="style2" >
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="textemail" ErrorMessage="invalid email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Font-Size="Small"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="textemail" ErrorMessage="enter email" Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" >
<asp:Label ID="lblemailflag" runat="server" Text="Email:"></asp:Label>
&nbsp;<asp:CheckBox ID="flagemail" runat="server" Checked="True" />
                </td>
                <td>
       
        
        <asp:Label ID="lblsmsflag" runat="server" Text="SMS :"></asp:Label>
&nbsp;<asp:CheckBox ID="flagsms" runat="server" Checked="True" />
                </td>
                <td class="style2">
       
        
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td class="style2" >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="3" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="savebutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/savebutton.png" Width="88px"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="cancelbutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/cancelbutton.png" Width="88px" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" 
            EnableViewState="False">
        </asp:ToolkitScriptManager>
        <br />
        <br />
        
         
        
        
    
    </div>
    </form>
</body>
</html>
