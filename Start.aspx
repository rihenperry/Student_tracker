<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" type="image/ico" href="/images/favicon.ico" />	
		<title>Students Tracker Login</title>		
		<link href="StartCss.css" type="text/css" media="screen" rel="stylesheet" />		
		<style type="text/css">
		img, div { behavior: url(iepngfix.htc) }
		</style>
</head>
<body id="login">
    <form id="form1" runat="server">
    
        
		<div id="wrappertop"></div>
			<div id="wrapper">
					<div id="content">
						<div id="header">
							<h1><a href=""><img src="/demo/staff/images/logo.png" alt="FreelanceSuite"></a></h1>
						</div>
						<div id="darkbanner" class="banner320">
							<h2>Login</h2>
						</div>
						<div id="darkbannerwrap">
						</div>
						<form name="form1" method="post" action="about.aspx">
						<fieldset class="form">
                        	 
							
							 <p>
								<label for="user_name">ENTITY_CODE:</label>
								<asp:TextBox ID="text_Entity_code" runat="server" MaxLength="15"></asp:TextBox>
							     <label for="user_name">LOGIN_NAME:&nbsp; </label>
								<asp:TextBox ID="text_Login_name" runat="server" MaxLength="15"></asp:TextBox>
							</p>
							
							<p>
								<label for="user_password">PASSWORD:</label>
								 <asp:TextBox ID="txtpassword" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox>
							</p>
							
							 
							
							 
							
					<p>
							<asp:Label ID="lblerr" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>&nbsp;</td>
							</p>
							
							
							
							<button type="submit" class="positive" name="Submit" onclick="imgSubmit_Click">
								<img src="images/key.png" alt="Announcement"/>Login</button>
								
								
						    <button type="submit" class="positive" name="Submit1" onclick="imgSubmit_Click">
								<img src="images/key.png" alt="Announcement"/>Sign up</button><br/>
								
								<ul id="forgottenpassword">
								
								<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="forgot.php">Forgotten it?</a></li>
							</ul>
								
                            						</fieldset>
                            						</form>
						
						
					</div>
				</div>   


    
    </form>
</body>
</html>
