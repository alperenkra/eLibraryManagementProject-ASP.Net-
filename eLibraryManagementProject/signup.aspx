<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="eLibraryManagementProject.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                       <div class="row">
                           <div class="col">
                               <center>
                                   <h4>Member Sign Up</h4>
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
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>

                        <div class="row">
                     <div class="col-md-6">
                        <label>Contact Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Name" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="E-Mail" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>


                   <div class="row">
                     <div class="col-md-4">
                        <label>Country</label>
                        <div class="form-group">
                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Turkey" Value="Turkey" />
                              <asp:ListItem Text="Germany" Value="Poland" />
                              <asp:ListItem Text="Poland" Value="Sakarya" />
                              <asp:ListItem Text="Ireland" Value="Irelan" />
                              <asp:ListItem Text="Russia" Value="Russia" />
                              <asp:ListItem Text="France" Value="France" />
                            </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>

                       <div class="col-md-4">
                        <label>Post Code</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Post Code" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                        
                  </div>




                   <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>

                              <div class="row">
   <div class="col-md-6">
      <label>User ID</label>
      <div class="form-group">
         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="User ID" TextMode="Number"></asp:TextBox>
      </div>
   </div>
   <div class="col-md-6">
      <label>Password</label>
      <div class="form-group">
         <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
      </div>
   </div>
</div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                   <a href="homepage.aspx"><< Back to Home</a><br>
                <br />
            </div>

       
</asp:Content>
