<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeReg.aspx.cs" Inherits="Employee.Guest.EmployeeReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        .auto-style2 {
            margin-left: 151px;
        }

        .auto-style3 {
            margin-bottom: 11px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
            <div class="col-sm-12 col-xl-12">
                <div class="bg-light rounded h-100 p-4">



                    <h4 class="mb-4">EMPLOYEE REGISTRATION</h4>



                    <div class="row mb-3">

                        <div class="col-sm-10">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
                            <asp:TextBox ID="txtempname" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtempname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>





                    <div class="row mb-3">

                        <div class="col-sm-10">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Address</label>
                            <asp:TextBox ID="txthousename" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Address" ControlToValidate="txthousename" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row mb-3">

                        <div class="col-sm-10">
                          
                    <asp:Label ID="Label1" runat="server" Text="District Name"></asp:Label>
            <asp:DropDownList ID="ddldistrictname" runat="server" CssClass="form-control" >
                <asp:ListItem>--select--</asp:ListItem>
                <asp:ListItem Value="Thiruvananthapuram">Thiruvananthapuram</asp:ListItem>
                <asp:ListItem Value="Kollam">Kollam</asp:ListItem>
                <asp:ListItem Value="Pathanamthitta">Pathanamthitta</asp:ListItem>
                <asp:ListItem Value="Alappuzha">Alappuzha</asp:ListItem>
                <asp:ListItem Value="Kottayam">Kottayam</asp:ListItem>
                <asp:ListItem Value="Idukki">Idukki</asp:ListItem>
                <asp:ListItem Value="Ernakulam">Ernakulam</asp:ListItem>
                <asp:ListItem Value="Thrissur">Thrissur</asp:ListItem>
                <asp:ListItem value="Palakkad">Palakkad</asp:ListItem>
                <asp:ListItem Value="Malappuram">Malappuram</asp:ListItem>
                <asp:ListItem Value="Kozhikode">Kozhikode</asp:ListItem>
                <asp:ListItem Value="Wayanad">Wayanad</asp:ListItem>
                <asp:ListItem Value="Kannur">Kannur</asp:ListItem>
                <asp:ListItem Value="Kasaragod">Kasaragod</asp:ListItem>
            </asp:DropDownList>
  
                    </div>
                      </div>
                    
                    <div class="row mb-3">

                        <div class="col-sm-10">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Pincode</label>
                            <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpincode" ErrorMessage="Invalid Pincode" ForeColor="Red" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                        </div>
                    </div>


                    <div class="row mb-3">

                        <div class="col-sm-10">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Registration Date</label>
                            <asp:TextBox ID="txtregdate" runat="server" TextMode="SingleLine" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-sm-10">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-sm-10">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Contact</label>
                            <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Invalid phone Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                     <div class="row mb-3">

                        <div class="col-sm-10">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">Description</label>
                            <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Description" ControlToValidate="txtdescription" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    
                    &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="btn-success" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>



</asp:Content>
