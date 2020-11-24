<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: right; font-size: 22px; color: red; font-weight: bold;">
        <asp:Label ID="lb_error" runat="server"></asp:Label>
    </p>
    <p style="text-align: right; font-size: 22px;">
        Login:&nbsp<asp:TextBox ID="tb_login" runat="server" style="font-size: 18px;" Width="100px"></asp:TextBox>
    </p>
    <p style="text-align: right; font-size: 22px;">
        Heslo:&nbsp<asp:TextBox ID="tb_heslo" runat="server" style="font-size: 18px;" TextMode="Password" Width="100px"></asp:TextBox>
    </p>
    <p style="text-align: right;">
        <asp:Button ID="btn_prihlasit" runat="server" OnClick="btn_prihlasit_Click" Text="Přihlásit se" style="font-size: 20px; font-weight: bold; background: aqua; padding: 5px;" Height="42px" Width="131px" />
    </p>
    <p style="font-weight: bold; text-align: right; font-size: 20px;">
        Login (Password): Admin (Admin), User (User)
    </p>
    <br />
    <h2 style="text-align:center; font-weight:bolder;">Seznam Novin:</h2>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Horizontal" style="margin: auto; font-size: 25px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="znacka" HeaderText="Nazev" SortExpression="znacka" />
            <asp:BoundField DataField="motorizace" HeaderText="Datum" SortExpression="motorizace" />
            <asp:BoundField DataField="spz" HeaderText="Verze" SortExpression="spz" />
            <asp:BoundField DataField="Jmeno" HeaderText="Jméno autora" SortExpression="Jmeno" />
            <asp:BoundField DataField="Prijmeni" HeaderText="Příjmení autora" SortExpression="Prijmeni" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Vypis" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
  <br /> 
     <br />
    <h2 style="text-align:center; font-weight:bolder;">Seznam Autorů:</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="margin: auto; font-size: 25px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
        <Columns>
            <asp:BoundField DataField="Jmeno" HeaderText="Jméno" SortExpression="Jmeno" />
            <asp:BoundField DataField="Prijmeni" HeaderText="Příjmení" SortExpression="Prijmeni" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Majitel]"></asp:SqlDataSource>
</asp:Content>




