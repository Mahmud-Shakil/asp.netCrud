<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SqlCrud.aspx.cs" Inherits="Projects.SqlCrud" %>

<%@ Register Src="~/ProductUserControl.ascx" TagPrefix="uc1" TagName="ProductUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="false" />
                <asp:TemplateField HeaderText="CustomerId" InsertVisible="False" SortExpression="CustomerId">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CustomerId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CustomerId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CustomerName" SortExpression="CustomerName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CustomerName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" SortExpression="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MobileNo" SortExpression="MobileNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductId" SortExpression="ProductId">
                   <EditItemTemplate>
                          <asp:DropDownList ID="ddl1" runat="server" SelectedValue='<%#Bind("ProductId") %>' DataTextField="ProductName" DataValueField="ProductId" DataSourceID="SqlDataSource2">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl" runat="server" SelectedValue='<%#Bind("ProductId") %>' DataTextField="ProductName" DataValueField="ProductId" DataSourceID="SqlDataSource2" Enabled="false">
                        </asp:DropDownList>
                         </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="PurchaseDate" SortExpression="PurchaseDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("PurchaseDate","{0:d}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("PurchaseDate","{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StoreId" SortExpression="StoreId">
                      <EditItemTemplate>
                          <asp:DropDownList ID="ddl2" runat="server" SelectedValue='<%#Bind("StoreId") %>' DataTextField="StoreNumber" DataValueField="StoreId" DataSourceID="SqlDataSource3">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl2" runat="server" SelectedValue='<%#Bind("StoreId") %>' DataTextField="StoreNumber" DataValueField="StoreId" DataSourceID="SqlDataSource3" Enabled="false">
                        </asp:DropDownList>
                         </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SupplierId" SortExpression="SupplierId">
                    <EditItemTemplate>
                          <asp:DropDownList ID="ddl3" runat="server" SelectedValue='<%#Bind("SupplierId") %>' DataTextField="SupplierName" DataValueField="SupplierId" DataSourceID="SqlDataSource4">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl3" runat="server" SelectedValue='<%#Bind("SupplierId") %>' DataTextField="SupplierName" DataValueField="SupplierId" DataSourceID="SqlDataSource4" Enabled="false">
                        </asp:DropDownList>
                         </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerName], [Email], [Address], [UnitPrice], [MobileNo], [ProductId], [ImageName], [ImageUrl], [PurchaseDate], [StoreId], [SupplierId]) VALUES (@CustomerName, @Email, @Address, @UnitPrice, @MobileNo, @ProductId, @ImageName, @ImageUrl, @PurchaseDate, @StoreId, @SupplierId)" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Email] = @Email, [Address] = @Address, [UnitPrice] = @UnitPrice, [MobileNo] = @MobileNo, [ProductId] = @ProductId, [ImageName] = @ImageName, [ImageUrl] = @ImageUrl, [PurchaseDate] = @PurchaseDate, [StoreId] = @StoreId, [SupplierId] = @SupplierId WHERE [CustomerId] = @CustomerId">
            <DeleteParameters>
                <asp:Parameter Name="CustomerId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="ImageUrl" Type="String" />
                <asp:Parameter Name="PurchaseDate" Type="DateTime" />
                <asp:Parameter Name="StoreId" Type="Int32" />
                <asp:Parameter Name="SupplierId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="ImageName" Type="String" />
                <asp:Parameter Name="ImageUrl" Type="String" />
                <asp:Parameter Name="PurchaseDate" Type="DateTime" />
                <asp:Parameter Name="StoreId" Type="Int32" />
                <asp:Parameter Name="SupplierId" Type="Int32" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Store]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
      
        <uc1:ProductUserControl runat="server" ID="ProductUserControl" />
    </div>
</asp:Content>
