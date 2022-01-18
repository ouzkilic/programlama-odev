<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Kitap Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-bottom: 0px" Width="196px"></asp:TextBox>
        </p>
        <p>
            Yazar Adı&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="16px" style="margin-bottom: 0px" Width="196px"></asp:TextBox>
        </p>
        <p>
            Sayfa Sayısı&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="16px" style="margin-bottom: 0px" Width="196px"></asp:TextBox>
        </p>
        <p>
            Basım Yılı&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="16px" style="margin-bottom: 0px" Width="196px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kaydet" />
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="625px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Sayfa" HeaderText="Sayfa" SortExpression="Sayfa" />
                <asp:BoundField DataField="Yazar" HeaderText="Yazar" SortExpression="Yazar" />
                <asp:BoundField DataField="KitapAdi" HeaderText="Kitap Adı" SortExpression="KitapAdi" />
                <asp:BoundField DataField="BasimYili" HeaderText="Basım Yılı" SortExpression="BasimYili" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kitaplikConnectionString %>" DeleteCommand="DELETE FROM [Kitaplar] WHERE [id] = @id" InsertCommand="INSERT INTO [Kitaplar] ([Sayfa], [Yazar], [KitapAdi], [BasimYili]) VALUES (@Sayfa, @Yazar, @KitapAdi, @BasimYili)" SelectCommand="SELECT * FROM [Kitaplar]" UpdateCommand="UPDATE [Kitaplar] SET [Sayfa] = @Sayfa, [Yazar] = @Yazar, [KitapAdi] = @KitapAdi, [BasimYili] = @BasimYili WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sayfa" Type="Int32" />
                <asp:Parameter Name="Yazar" Type="String" />
                <asp:Parameter Name="KitapAdi" Type="String" />
                <asp:Parameter Name="BasimYili" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sayfa" Type="Int32" />
                <asp:Parameter Name="Yazar" Type="String" />
                <asp:Parameter Name="KitapAdi" Type="String" />
                <asp:Parameter Name="BasimYili" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    

        </body>
</html>
