<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductUserControl.ascx.cs" Inherits="Projects.ProductUserControl" %>

<style>

    .pleaseWait {
        margin: auto;
         width: 50%;
         border: 3px solid green;
         padding: 10px;
        background-image: url('AppImage/waiting-spinning.gif');
        background-position:center;
        background-repeat: no-repeat;
        height: 400px;
        width: 400px;
       
       


    }
</style>

    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>
    &nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="auto-style1" style="width: 500px; margin: 0 auto;">
                <asp:HiddenField ID="HiddenImageName" runat="server" />
                <asp:HiddenField ID="HiddenImageUrl" runat="server" />
               
                <tr>
                    <td colspan="2">
                        <h2>Crud Operation</h2>
                    </td>
                </tr>
                <tr>
                    <td>Supplier </td>
                    <td>
                        <asp:TextBox ID="txtSupplier" runat="server" Style="height: 22px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnSupplierSave" runat="server" Text="Save" Width="91px" CausesValidation="false" OnClick="BtnSupplierSave_Click" />
                    </td>
                </tr>
                <tr>
                    <td>StoreNumber </td>
                    <td>
                        <asp:TextBox ID="txtStore" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnStoreSave" runat="server" Text="Save" Width="91px" CausesValidation="false" OnClick="BtnStoreSave_Click" />
                    </td>
                </tr>

                <tr>
                    <td>Product </td>
                    <td>
                        <asp:TextBox ID="txtProduct" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnProductSave" runat="server" Text="Save" Width="91px" OnClick="btnProductSave_Click" CausesValidation="false" />
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <h2>Customer</h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Custome Name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="txtCustomerName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Name Must Be Upper Case" ControlToValidate="txtCustomerName" Display="Dynamic" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Purchase Date</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="~/AppImage/CalenderLogo.png" Width="33px" OnClick="ImageButton1_Click" CausesValidation="false" /><br />
                        <asp:Calendar ID="Calendar1" runat="server" Height="114px" Width="160px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>

                    </td>
                </tr>
                <tr>
                    <td>&nbsp;Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Format" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td>Address
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mobile No
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" class="img" Height="59px" Width="56px" /><br />
                        <asp:FileUpload ID="FileUpload1" runat="server" onchange="if(confirm('upload'+this.value+'?')) this.form.submit()" />
                    </td>
                </tr>
                <tr>
                    <td>Product Category</td>
                    <td>
                        <asp:DropDownList ID="ddlCategory" runat="server">
                        </asp:DropDownList>
                        <br />
                        <asp:CompareValidator ControlToValidate="ddlCategory" ID="CompareValidator1"
                            ErrorMessage="Please select a Category"
                            runat="server" Display="Dynamic"
                            Operator="NotEqual" ValueToCompare="0" Type="Integer" />
                    </td>
                </tr>

                <tr>
                    <td>Store</td>
                    <td>
                        <asp:DropDownList ID="ddlStore" runat="server">
                        </asp:DropDownList>
                        <asp:CompareValidator ControlToValidate="ddlCategory" ID="CompareValidator3"
                            ErrorMessage="Please select a Store"
                            runat="server" Display="Dynamic"
                            Operator="NotEqual" ValueToCompare="0" Type="Integer" />
                    </td>
                </tr>
                <tr>
                    <td>Supplier</td>
                    <td>
                        <asp:DropDownList ID="ddlSupplier" runat="server">
                        </asp:DropDownList>
                        <asp:CompareValidator ControlToValidate="ddlCategory" ID="CompareValidator2"
                            ErrorMessage="Please select a Supplier"
                            runat="server" Display="Dynamic"
                            Operator="NotEqual" ValueToCompare="0" Type="Integer" />
                    </td>
                </tr>
                <tr>
                    <td>Unit Price</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Price Must Be 100-5000" ControlToValidate="txtPrice" Display="Dynamic" ForeColor="Red" MaximumValue="5000" MinimumValue="100" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSaveProduct" runat="server" Text="save" Width="135px" OnClick="btnSaveProduct_Click" Height="38px" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="161px" OnClick="btnClear_Click" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnSaveProduct" />
        </Triggers>
    </asp:UpdatePanel>
     <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate >
                        <div class="pleaseWait" >
                            Please Wait a bit
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>



