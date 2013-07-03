<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stud_Login.aspx.cs" Inherits="Stud_Login" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Login Form</title>
   <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
 </head>
  <body>
    <div class="container">
            <header><h1>STUDENTS TRACKER Login and Registration Form </h1></header>
			
            
           <!-- <section>	-->			
                <div id="container_demo" >
                        <a class="hiddenanchor" id="toregister"></a>
                        <a class="hiddenanchor" id="tologin"></a>
                    
                       
                         <div id="wrapper">
                            <div id="login" class="animate form">
                                <form id="form1" runat="server">
                                            <asp:PlaceHolder id="PlaceHolder1"  runat="server"/>                                                                                                          
                                            <h1>Log in</h1> 
                                            <p> 
                                             <asp:Label ID="lblentitycode" runat="server" Text="Entity Code :" 
                                                Font-Bold="False"></asp:Label><br/>
                                             <asp:TextBox ID="textlogincode" runat="server" MaxLength="15" Width="350px"></asp:TextBox>
                                        </p>
                                        <p> 
                                            <asp:Label ID="lblloginname" runat="server" Text="Login Name :"></asp:Label><br/>
                                            <asp:TextBox ID="textloginname" runat="server" MaxLength="15" Width="350px"></asp:TextBox>
                                        </p>
                                        <p>
                                            <asp:Label ID="Label1" runat="server" Text="Password :"></asp:Label><br/>
                                            <asp:TextBox ID="textloginpassword" runat="server" MaxLength="15" 
                                                TextMode="Password" Width="350px" ToolTip="Max 15 characters"></asp:TextBox>
                                        </p>
                                        <p class="keeplogin"> 
									        <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									        <label for="loginkeeping">Keep me logged in</label>
								        </p>
                                        <p class="login button"> 
                                            <asp:Button ID="Button_Login" runat="server" Text="LOGIN" 
                                                OnClick="Button_Login_click" Height="33px" Width="88px" />
                                           <!-- <input type="submit" value="Login" onclick="" style="height: 26px" /> -->
								        </p>
                                        <p class="change_link">
									        Not a member yet ?
									        <a href="#toregister" class="to_register">Join us</a>
								        </p>
							   
                            </div>
               <!-- </div>-->
                      
                            <div id="register" class="animate form">
                              
                                     <asp:PlaceHolder id="PlaceHolder2" runat="server"/>
                                        <h1> Sign up </h1> 
                                          <p> 
                                             <asp:Label ID="Label3" runat="server" Text="Entity Code :" 
                                                Font-Bold="False"></asp:Label><br/>
                                             <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" Width="350px"></asp:TextBox>
                                        </p>
                                        <p> 
                                            <asp:Label ID="Label2" runat="server" Text="Login Name :"></asp:Label><br/>
                                           <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" Width="350px"></asp:TextBox>
                                        </p>
                                        <p>
                                            <asp:Label ID="Label4" runat="server" Text="Password :"></asp:Label><br/>
                                            <asp:TextBox ID="TextBox3" runat="server" MaxLength="15" 
                                                TextMode="Password" Width="350px" ToolTip="Max 15 characters"></asp:TextBox>
                                        </p>
                                        <p>
                                            <asp:Label ID="Label5" runat="server" Text="Confirm Password :"></asp:Label><br/>
                                            <asp:TextBox ID="TextBox4" runat="server" MaxLength="15" 
                                                TextMode="Password" Width="350px" ToolTip="Max 15 characters"></asp:TextBox>
                                        </p>
                                       
                                       
                                        <p class="signin button"> 
									        <asp:Button ID="Button_Signup" runat="server" Text="SIGN UP" 
                                                OnClick="Button_Signup_click" Height="33px" Width="88px" />
								        </p>
                                        <p class="change_link">  
									        Already a member ?
									        <a href="#tologin" class="to_register"> Go and log in </a>
								        </p>
                              </form>
                         </div>
					</div>     
               </div>
          <!--  </section>-->
       </div>
    </body>
</html>
    
