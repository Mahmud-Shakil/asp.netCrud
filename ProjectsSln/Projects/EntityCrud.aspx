<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EntityCrud.aspx.cs" Inherits="Projects.EntityCrud" %>

<%@ Register Src="~/ProductUserControl.ascx" TagPrefix="uc1" TagName="ProductUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
      
                 <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="false" DataKeyNames="CustomerId" OnPageIndexChanging="GridView_PageIndexChanging" OnRowCancelingEdit="GridView_RowCancelingEdit" OnRowDeleting="GridView_RowDeleting" OnRowEditing="GridView_RowEditing" OnRowUpdating="GridView_RowUpdating">
             <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false" />
               <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
               <asp:TemplateField HeaderText="CustomerName" SortExpression="CustomerName">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%# Bind("CustomerName") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Email" SortExpression="Email">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Address" SortExpression="Address">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="MobileNo" SortExpression="MobileNo">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label4" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label5" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label6" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                   <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" style="height:60px;width:70px;border-width:0px;" ImageUrl='<%# Eval("ImageUrl") %>'  />
                    </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="ProductId" SortExpression="ProductId" Visible="false">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ProductId") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label8" runat="server" Text='<%# Bind("ProductId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="PurchaseDate" SortExpression="PurchaseDate">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("PurchaseDate","{0:d}") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label9" runat="server" Text='<%# Bind("PurchaseDate","{0:d}") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                   <EditItemTemplate>
                          <asp:DropDownList ID="ddl1" runat="server" SelectedValue='<%#Bind("ProductId") %>' DataTextField="ProductName" DataValueField="ProductId" DataSourceID="SqlDataSource1">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl" runat="server" SelectedValue='<%#Bind("ProductId") %>' DataTextField="ProductName" DataValueField="ProductId" DataSourceID="SqlDataSource1" Enabled="false">
                        </asp:DropDownList>
                         </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="StoreId" SortExpression="StoreId" Visible="false">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("StoreId") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label11" runat="server" Text='<%# Bind("StoreId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="StoreNumber" SortExpression="StoreNumber">
                  <EditItemTemplate>
                          <asp:DropDownList ID="ddl2" runat="server" SelectedValue='<%#Bind("StoreId") %>' DataTextField="StoreNumber" DataValueField="StoreId" DataSourceID="SqlDataSource2">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl2" runat="server" SelectedValue='<%#Bind("StoreId") %>' DataTextField="StoreNumber" DataValueField="StoreId" DataSourceID="SqlDataSource2" Enabled="false">
                        </asp:DropDownList>
                         </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="SupplierId" SortExpression="SupplierId" Visible="false">
                   <EditItemTemplate>
                       <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("SupplierId") %>'></asp:TextBox>
                   </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Label ID="Label13" runat="server" Text='<%# Bind("SupplierId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="SupplierName" SortExpression="SupplierName">
                     <EditItemTemplate>
                          <asp:DropDownList ID="ddl3" runat="server" SelectedValue='<%#Bind("SupplierId") %>' DataTextField="SupplierName" DataValueField="SupplierId" DataSourceID="SqlDataSource3" >
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl3" runat="server" SelectedValue='<%#Bind("SupplierId") %>' DataTextField="SupplierName" DataValueField="SupplierId" DataSourceID="SqlDataSource3" Enabled="false">
                        </asp:DropDownList>
                         </ItemTemplate>
               </asp:TemplateField>
           </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Store]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
           
        <uc1:ProductUserControl runat="server" ID="ProductUserControl" />
    </div>
</asp:Content>
