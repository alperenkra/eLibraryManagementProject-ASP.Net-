﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="eLibraryManagementProject.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                       <div class="row">
                           <div class="col">
                               <center>
                                   <h2>Member Login</h2>
                               </center>
                           </div>
                       </div>
                        <div class="row">
    <div class="col">
        <center>
            <hr />
        </center>
    </div>
</div>

                        <div class="row">
    <div class="col">
                    <label>Member ID</label>
        <div class="form-group">

            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>

        </div>

                    <label>Password</label>
<div class="form-group">

    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

</div>
       
    </div>
</div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</asp:Content>
