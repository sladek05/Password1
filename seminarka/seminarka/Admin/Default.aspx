<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: right; font-size: 32px; font-weight: bold; color: dodgerblue; ">
        Admin&nbsp
        <asp:Button ID="btn_odhlasit" runat="server" OnClick="btn_odhlasit_Click" Text="Odhlásit se" style="font-size: 20px; font-weight: bold; background: aqua; padding: 5px;" />
    </div>
    <br />
     <h2 style="text-align:center; font-weight:bolder;">Přidání autora:</h2>
    <div style="text-align:center; font-weight:bolder; font-size: 18px;">Jméno:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tb_jmeno" runat="server"></asp:TextBox></div>
    <br />
    <div style="text-align:center; font-weight:bolder; font-size: 18px;">Příjmení:
    <asp:TextBox ID="tb_prijmeni" runat="server" style="text-align:center;"></asp:TextBox></div>
    <br />
    <div style="text-align:center; font-weight:bolder; font-size: 22px;"><asp:Button ID="btn_pridat_majitel" runat="server" OnClick="btn_pridat_majitel_Click" Text="Přidat autora" /></div>
    <br />
        <h2 style="text-align:center; font-weight:bolder;">Přidání článku:</h2>
    <div style="text-align:center; font-weight:bolder; font-size: 18px;">Název:<asp:TextBox ID="tb_znacka" runat="server"></asp:TextBox></div>
    <br />
    <div style="text-align:center; font-weight:bolder; font-size: 18px;">Datum:<asp:TextBox ID="tb_motorizace" runat="server"></asp:TextBox></div>
    <br />
    <div style="text-align:center; font-weight:bolder; font-size: 18px;">Verze:<asp:TextBox ID="tb_spz" runat="server"></asp:TextBox></div>
    <br />
      <div style="text-align:center; font-weight:bolder; font-size: 18px;">Stav:<asp:TextBox ID="tb_model" runat="server"></asp:TextBox></div>
    <br />
    <div style="text-align:center; font-weight:bolder; font-size: 18px;">Autor:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Prijmeni" DataValueField="Prijmeni">
    </asp:DropDownList></div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Jmeno], [Prijmeni] FROM [Majitel]"></asp:SqlDataSource>
    <br />
    <div style="text-align:center; font-weight:bolder; font-size: 18px;"><asp:Button ID="btn_pridat_auto" runat="server" Text="Přidat článek" OnClick="btn_pridat_auto_Click" /></div>
    <br />
    <h2 style="text-align:center; font-weight:bolder;">Vlastníci automobilů:</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" style="margin: auto; font-size: 25px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
        <Columns>
            <asp:BoundField DataField="Jmeno" HeaderText="Jméno" SortExpression="Jmeno" />
            <asp:BoundField DataField="Prijmeni" HeaderText="Přijmení" SortExpression="Prijmeni" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Jmeno], [Prijmeni] FROM [Majitel]"></asp:SqlDataSource>
     <div style="text-align:center; font-weight:bolder; font-size: 18px;"><asp:Button ID="btn_editace_majitelu" runat="server" OnClick="btn_editace_majitelu_Click" Text="Editace autorů" /></div>
    <br />
    
    <h2 style="text-align:center; font-weight:bolder;">Automobily:<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Horizontal" style="margin: auto; font-size: 25px; font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="znacka" HeaderText="Název" SortExpression="znacka" />
            <asp:BoundField DataField="model" HeaderText="Stav" SortExpression="model" />
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
    </h2>
    <div style="text-align:center; font-weight:bolder; font-size: 18px;">
        <asp:Button ID="btn_editace_vozidel" runat="server" OnClick="btn_editace_vozidel_Click" Text="Editace článků" />
    </div>
     
</asp:Content>

