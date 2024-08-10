<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="filtering.aspx.cs" Inherits="Employee.Guest.filtering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="margin-left:100px;">
        <h1>Number of Employees From A District</h1>
    <asp:GridView ID="GridView1" runat="server" Width="1000px" AutoGenerateColumns="False" AllowPaging="True"   CellPadding="4" ForeColor="#333333" GridLines="None"  PageSize="10">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Sl.no">

                 <ItemTemplate>
             <%#Container.DataItemIndex+1%>
           </ItemTemplate>

            </asp:TemplateField>
            <asp:BoundField DataField="district" HeaderText="district" />
            <asp:BoundField DataField="count_employee" HeaderText="count" />
           
          
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

        </div>


</asp:Content>
