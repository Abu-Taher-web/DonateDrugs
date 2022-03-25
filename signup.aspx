<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="DonateDrugs.signup" %>
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
                           <img width="100px" src="imgs/generaluser.png"/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>User Registration</h4>
                           
                        </center>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>


                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="fullNameId" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>

                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="dateOfBirthId" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="contactNoId" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="emailId" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Division</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="divisionListId" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Dhaka" Value="Dhaka" />
                              <asp:ListItem Text="Khulna" Value="Khulna" />
                              <asp:ListItem Text="Rajshai" Value="Rajshai" />
                              <asp:ListItem Text="Rangpur" Value="Rangpur" />
                              <asp:ListItem Text="Mymenshingh" Value="Mymenshingh" />
                              <asp:ListItem Text="Sylhet" Value="Sylhet" />
                              <asp:ListItem Text="Barisal" Value="Barisal" />
                              <asp:ListItem Text="Chittagong" Value="Chittagong" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>District</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="districtId" runat="server" placeholder="District"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Zipcode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="zipCodeId" runat="server" placeholder="Zip code" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="fullAddressId" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                           <asp:TextBox class="form-control" ID="userIdId" runat="server" placeholder="User ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="passwordId" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="signupId" runat="server" Text="Sign Up" OnClick="signup_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homePage.aspx"><< Back to Home</a><br><br>
         </div>

      </div>

   </div>
</asp:Content>
