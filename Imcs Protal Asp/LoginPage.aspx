﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Imcs_Protal_Asp.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="loginform" runat="server">
        <h1 class="text-info text-center">Login Page</h1>
        <br />
        <div class="container">
                <div class="form-group">
<%--                    <asp:TextBox ID="emailid" runat="server" type="text" name="emailid" placeholder="Email (example: a@a.com)" class="form-control" ClientIDMode="static"></asp:TextBox>--%>
                    <input id="emailid" type="text" name="emailid" placeholder="Email (example: a@a.com)" class="form-control" />
                    <span id="error_email" class="text-danger"></span>

                </div>

                <div class="form-group">
<%--                    <asp:TextBox ID="password" runat="server" type="password" name="passwords" placeholder="Password" class="form-control"  ClientIDMode="static"></asp:TextBox>--%>
                                       <input id="password" type="password" name="passwords" placeholder="Password" class="form-control" />

                    <span id="error_pwd" class="text-danger"></span>

                </div>

                    <div>

<%--                        <asp:Label ID="Label1" runat="server" class="text text-danger" Text="User with provided Email and Password doesn't exist in the database"></asp:Label>--%>
                                        <span id="error_login" class="text-danger"></span>
                                            <br />

                    </div>
                        <div class="col-xs-4 text-center ">

                   <%-- <asp:Button ID="Button_LogIn" runat="server" type="submit" name="submit" class="btn btn-success" Text="Log In" ClientIDMode="Static" OnClick="Button_LogIn_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;--%>
                   
            <input id="Button_LogIn" type="button" value="Log In" class="btn btn-success" /> &nbsp;&nbsp;&nbsp;&nbsp;

<%--        <asp:Button ID="Button_CancelLogIn" runat="server" type="button" name="cancel" class="btn btn-danger" Text="Cancel" ClientIDMode="static" OnClick="Button_CancelLogIn_Click" />--%>
                    <input id="Button_CancelLogIn" type="button" value="Cancel" class="btn btn-danger"  />      
                </div>
                <div style="margin-top:100px; height:500px; margin-bottom:100px;">
                <div id="bestStudent" style="height:200px; width:500px; text-align:center;background-color:lightseagreen;float:left;border-radius:10px; font-family:Cambria; padding:20px;box-shadow: 0 15px 20px -0px gray; color:black;">
                    <h3><b>Best student of the week:</b></h3>
                    <h4>Student ID:<b><label id="lbl_SID"></label></b></h4>
                    <h4>Student First Name:<b><label id="lbl_SFName"></label></b></h4>
                    <h4>Student Last Name:<b><label id="lbl_SLname"></label></b></h4>
                </div>
                <div id="bestFaculty"style="height:200px; width:500px; text-align:center; background-color:cornflowerblue;font-family:Cambria; float:right; border-radius:10px; padding:20px; box-shadow: 0 15px 20px -0px gray; color:black;">
                    <h3><b>Best Faculty of the week:</b></h3>
                    <h4>Faculty ID:<b><label id="lbl_FID"></label></b></h4>
                    <h4>Faculty First Name:<b><label id="lbl_FFName"></label></b></h4>
                    <h4>Faculty Last Name:<b><label id="lbl_FLName"></label></b></h4>
                </div>
                    </div>
        </div>
    </form>
    <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>--%>
    <%--    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>--%>
        
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/loginjquery.js"></script>
</asp:Content>
