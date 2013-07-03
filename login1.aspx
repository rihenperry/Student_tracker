<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <head>
 <style type="text/css">
         .main
        {
            font-family:Trebuchet MS;
            text-align:justify;
            position:relative;
          
        }
                 
          .curvedEdges 
    { 
    	border:2px solid RoyalBlue;-webkit-border-radius:13px;-moz-border-radius:13px;-ms-border-radius:13px;-o-border-radius:13px;border-radius:13px;
     }
    table.curvedEdges td, table.curvedEdges th 
    { 
	border-bottom:1px dotted black;padding:5px; 
	}

         .watermark
         {
         	color:Silver;
         	}
    </style>
    </head>

    <div>
    
        <br />
    
        <table align="center" class="curvedEdges">
            <tr>
                <td colspan="2">
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
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Password :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="textloginpassword" runat="server" MaxLength="15" 
                        TextMode="Password" Width="181px"></asp:TextBox>
                   
                    
                    <asp:TextBoxWatermarkExtender ID="textloginpassword_TextBoxWatermarkExtender" 
                        runat="server" Enabled="True" TargetControlID="textloginpassword" WatermarkText="Enter password" WatermarkCssClass="watermark">
                    </asp:TextBoxWatermarkExtender>
                   
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblerror" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="loginbutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/loginbutton.png" Width="88px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="cancelbutton" runat="server" Height="33px" 
                        ImageUrl="~/Images/cancelbutton.png"  
                        Width="88px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    
</asp:Content>

