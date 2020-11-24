<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Název:
            <asp:TextBox ID="znackaTextBox" runat="server" Text='<%# Bind("znacka") %>' />
            <br />
            Stav:
            <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' />
            <br />
            Datum:
            <asp:TextBox ID="motorizaceTextBox" runat="server" Text='<%# Bind("motorizace") %>' />
            <br />
            Verze:
            <asp:TextBox ID="spzTextBox" runat="server" Text='<%# Bind("spz") %>' />
            <br />
            Jmeno autora:
            <asp:TextBox ID="JmenoTextBox" runat="server" Text='<%# Bind("Jmeno") %>' />
            <br />
            Prijmeni autora:
            <asp:TextBox ID="PrijmeniTextBox" runat="server" Text='<%# Bind("Prijmeni") %>' />
            <br />
            Komentar redaktora:
            <asp:TextBox ID="KomentarTextBox" runat="server" Text='<%# Bind("komentar") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizovat" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Storno" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Název:
            <asp:TextBox ID="znackaTextBox" runat="server" Text='<%# Bind("znacka") %>' />
            <br />
            Stav:
            <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' />
            <br />
            Datum:
            <asp:TextBox ID="motorizaceTextBox" runat="server" Text='<%# Bind("motorizace") %>' />
            <br />
            Verze:
            <asp:TextBox ID="spzTextBox" runat="server" Text='<%# Bind("spz") %>' />
            <br />
            Jmeno autora:
            <asp:TextBox ID="JmenoTextBox" runat="server" Text='<%# Bind("Jmeno") %>' />
            <br />
            Prijmeni autora:
            <asp:TextBox ID="PrijmeniTextBox" runat="server" Text='<%# Bind("Prijmeni") %>' />
            <br />
             Komentar redaktora:
            <asp:TextBox ID="KomentarTextBox" runat="server" Text='<%# Bind("komentar") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Vložit" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Storno" />
        </InsertItemTemplate>
        <ItemTemplate>
            Název:
            <asp:Label ID="znackaLabel" runat="server" Text='<%# Bind("znacka") %>' />
            <br />
            Stav:
            <asp:Label ID="modelLabel" runat="server" Text='<%# Bind("model") %>' />
            <br />
            Datum:
            <asp:Label ID="motorizaceLabel" runat="server" Text='<%# Bind("motorizace") %>' />
            <br />
            Verze:
            <asp:Label ID="spzLabel" runat="server" Text='<%# Bind("spz") %>' />
            <br />
            Jmeno autora:
            <asp:Label ID="JmenoLabel" runat="server" Text='<%# Bind("Jmeno") %>' />
            <br />
            Prijmeni autora:
            <asp:Label ID="PrijmeniLabel" runat="server" Text='<%# Bind("Prijmeni") %>' />
            <br />
             Komentar redaktora:
            <asp:Label ID="KomentarLabel" runat="server" Text='<%# Bind("komentar") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            <br />
        </ItemTemplate>
    </asp:FormView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Vypis" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>

