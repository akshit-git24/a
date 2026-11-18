<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practice.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lb1" runat="server" Text="ID :"></asp:Label>
            <asp:TextBox ID="TB1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" ForeColor="Red" ControlToValidate="TB1"></asp:RequiredFieldValidator>

        </div>
        <asp:Label ID="lb2" runat="server" Text="Name :"></asp:Label>
        <asp:TextBox ID="TB2" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lb3" runat="server" Text="Email :"></asp:Label>
            <asp:TextBox ID="TB3" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="This field must contain @"></asp:RegularExpressionValidator

        </p>
        
   
        


        <asp:Button ID="btn1" runat="server" Text="Insert" OnClick="ins"/>
        <asp:Button ID="Button2" runat="server" Text="Update" OnClick="upd" />
        <asp:Button ID="Button3" runat="server" Text="Delete" OnClick="del"/>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="3" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [stu]"
            InsertCommand="INSERT INTO stu(id,name,email) VALUES (@id,@name,@email)"
            UpdateCommand="UPDATE stu SET name=@name,email=@email WHERE id=@id"
            DeleteCommand="DELETE FROM stu WHERE id=@id"
            >
            
    <InsertParameters>
        <asp:Parameter Name="id" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
    </InsertParameters>

            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>

            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
