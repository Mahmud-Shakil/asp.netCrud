<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Controls.aspx.cs" Inherits="Projects.Controls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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
                          <asp:DropDownList ID="ddl1" runat="server" SelectedValue='<%#Bind("ProductId") %>' DataTextField="ProductName" DataValueField="ProductId" DataSourceID="SqlDataSource9">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl" runat="server" SelectedValue='<%#Bind("ProductId") %>' DataTextField="ProductName" DataValueField="ProductId" DataSourceID="SqlDataSource9">
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
                          <asp:DropDownList ID="ddl2" runat="server" SelectedValue='<%#Bind("StoreId") %>' DataTextField="StoreNumber" DataValueField="StoreId" DataSourceID="SqlDataSource10">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl2" runat="server" SelectedValue='<%#Bind("StoreId") %>' DataTextField="StoreNumber" DataValueField="StoreId" DataSourceID="SqlDataSource10">
                        </asp:DropDownList>
                         </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SupplierId" SortExpression="SupplierId">
                         <EditItemTemplate>
                          <asp:DropDownList ID="ddl3" runat="server" SelectedValue='<%#Bind("SupplierId") %>' DataTextField="SupplierName" DataValueField="SupplierId" DataSourceID="SqlDataSource11">
                        </asp:DropDownList>
                     </EditItemTemplate>
                     <ItemTemplate>
                          <asp:DropDownList ID="ddl3" runat="server" SelectedValue='<%#Bind("SupplierId") %>' DataTextField="SupplierName" DataValueField="SupplierId" DataSourceID="SqlDataSource11">
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
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Store]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="CustomerName" DataValueField="CustomerId">
        </asp:DropDownList>
        <br />
        <br /><h1>Details View</h1>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
            <Fields>
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
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CustomerName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" SortExpression="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MobileNo" SortExpression="MobileNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductId" SortExpression="ProductId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ProductId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ProductId") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("ProductId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImageUrl" SortExpression="ImageUrl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("ImageUrl") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PurchaseDate" SortExpression="PurchaseDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("PurchaseDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("PurchaseDate") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("PurchaseDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="StoreId" SortExpression="StoreId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("StoreId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("StoreId") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("StoreId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SupplierId" SortExpression="SupplierId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("SupplierId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("SupplierId") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("SupplierId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerId] = @CustomerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1"  Name="CustomerId" PropertyName="SelectedValue" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerId] = @CustomerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="CustomerId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <h1>List View</h1>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustomerId" DataSourceID="SqlDataSource4" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Eval("PurchaseDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StoreIdLabel" runat="server" Text='<%# Eval("StoreId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SupplierIdLabel" runat="server" Text='<%# Eval("SupplierId") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="CustomerIdLabel1" runat="server" Text='<%# Eval("CustomerId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PurchaseDateTextBox" runat="server" Text='<%# Bind("PurchaseDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StoreIdTextBox" runat="server" Text='<%# Bind("StoreId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SupplierIdTextBox" runat="server" Text='<%# Bind("SupplierId") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PurchaseDateTextBox" runat="server" Text='<%# Bind("PurchaseDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StoreIdTextBox" runat="server" Text='<%# Bind("StoreId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SupplierIdTextBox" runat="server" Text='<%# Bind("SupplierId") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Eval("PurchaseDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StoreIdLabel" runat="server" Text='<%# Eval("StoreId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SupplierIdLabel" runat="server" Text='<%# Eval("SupplierId") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">CustomerId</th>
                                    <th runat="server">CustomerName</th>
                                    <th runat="server">Email</th>
                                    <th runat="server">Address</th>
                                    <th runat="server">UnitPrice</th>
                                    <th runat="server">MobileNo</th>
                                    <th runat="server">ProductId</th>
                                    <th runat="server">ImageName</th>
                                    <th runat="server">ImageUrl</th>
                                    <th runat="server">PurchaseDate</th>
                                    <th runat="server">StoreId</th>
                                    <th runat="server">SupplierId</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Eval("PurchaseDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StoreIdLabel" runat="server" Text='<%# Eval("StoreId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SupplierIdLabel" runat="server" Text='<%# Eval("SupplierId") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerName], [Email], [Address], [UnitPrice], [MobileNo], [ProductId], [ImageName], [ImageUrl], [PurchaseDate], [StoreId], [SupplierId]) VALUES (@CustomerName, @Email, @Address, @UnitPrice, @MobileNo, @ProductId, @ImageName, @ImageUrl, @PurchaseDate, @StoreId, @SupplierId)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Email] = @Email, [Address] = @Address, [UnitPrice] = @UnitPrice, [MobileNo] = @MobileNo, [ProductId] = @ProductId, [ImageName] = @ImageName, [ImageUrl] = @ImageUrl, [PurchaseDate] = @PurchaseDate, [StoreId] = @StoreId, [SupplierId] = @SupplierId WHERE [CustomerId] = @CustomerId">
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
        <br />
        <h1>DataList</h1>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CustomerId" DataSourceID="SqlDataSource5" RepeatColumns="5">
            <ItemTemplate>
                CustomerId:
                <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                <br />
                CustomerName:
                <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                MobileNo:
                <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                <br />
                ProductId:
                <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ImageName:
                <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
                <br />
                ImageUrl:
                <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                <br />
                PurchaseDate:
                <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Eval("PurchaseDate") %>' />
                <br />
                StoreId:
                <asp:Label ID="StoreIdLabel" runat="server" Text='<%# Eval("StoreId") %>' />
                <br />
                SupplierId:
                <asp:Label ID="SupplierIdLabel" runat="server" Text='<%# Eval("SupplierId") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerName], [Email], [Address], [UnitPrice], [MobileNo], [ProductId], [ImageName], [ImageUrl], [PurchaseDate], [StoreId], [SupplierId]) VALUES (@CustomerName, @Email, @Address, @UnitPrice, @MobileNo, @ProductId, @ImageName, @ImageUrl, @PurchaseDate, @StoreId, @SupplierId)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Email] = @Email, [Address] = @Address, [UnitPrice] = @UnitPrice, [MobileNo] = @MobileNo, [ProductId] = @ProductId, [ImageName] = @ImageName, [ImageUrl] = @ImageUrl, [PurchaseDate] = @PurchaseDate, [StoreId] = @StoreId, [SupplierId] = @SupplierId WHERE [CustomerId] = @CustomerId">
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
        <br />
        <h1>Form View</h1>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource6" DataTextField="CustomerName" DataValueField="CustomerId"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource7">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" SortExpression="ProductId" />
                <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                <asp:BoundField DataField="ImageUrl" HeaderText="ImageUrl" SortExpression="ImageUrl" />
                <asp:BoundField DataField="PurchaseDate" HeaderText="PurchaseDate" SortExpression="PurchaseDate" />
                <asp:BoundField DataField="StoreId" HeaderText="StoreId" SortExpression="StoreId" />
                <asp:BoundField DataField="SupplierId" HeaderText="SupplierId" SortExpression="SupplierId" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerId] = @CustomerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="CustomerId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="CustomerId" DataSourceID="SqlDataSource8">
            <EditItemTemplate>
                CustomerId:
                <asp:Label ID="CustomerIdLabel1" runat="server" Text='<%# Eval("CustomerId") %>' />
                <br />
                CustomerName:
                <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                MobileNo:
                <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                <br />
                ProductId:
                <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                <br />
                ImageName:
                <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                <br />
                ImageUrl:
                <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                <br />
                PurchaseDate:
                <asp:TextBox ID="PurchaseDateTextBox" runat="server" Text='<%# Bind("PurchaseDate") %>' />
                <br />
                StoreId:
                <asp:TextBox ID="StoreIdTextBox" runat="server" Text='<%# Bind("StoreId") %>' />
                <br />
                SupplierId:
                <asp:TextBox ID="SupplierIdTextBox" runat="server" Text='<%# Bind("SupplierId") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                CustomerName:
                <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                MobileNo:
                <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                <br />
                ProductId:
                <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                <br />
                ImageName:
                <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                <br />
                ImageUrl:
                <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                <br />
                PurchaseDate:
                <asp:TextBox ID="PurchaseDateTextBox" runat="server" Text='<%# Bind("PurchaseDate") %>' />
                <br />
                StoreId:
                <asp:TextBox ID="StoreIdTextBox" runat="server" Text='<%# Bind("StoreId") %>' />
                <br />
                SupplierId:
                <asp:TextBox ID="SupplierIdTextBox" runat="server" Text='<%# Bind("SupplierId") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                CustomerId:
                <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
                <br />
                CustomerName:
                <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Bind("CustomerName") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                MobileNo:
                <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Bind("MobileNo") %>' />
                <br />
                ProductId:
                <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Bind("ProductId") %>' />
                <br />
                ImageName:
                <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Bind("ImageName") %>' />
                <br />
                ImageUrl:
                <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Bind("ImageUrl") %>' />
                <br />
                PurchaseDate:
                <asp:Label ID="PurchaseDateLabel" runat="server" Text='<%# Bind("PurchaseDate") %>' />
                <br />
                StoreId:
                <asp:Label ID="StoreIdLabel" runat="server" Text='<%# Bind("StoreId") %>' />
                <br />
                SupplierId:
                <asp:Label ID="SupplierIdLabel" runat="server" Text='<%# Bind("SupplierId") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerId] = @CustomerId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="CustomerId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
      
    </div>
    <div>
        <h1>Repeater</h1>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource12"></asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    </div>

</asp:Content>
