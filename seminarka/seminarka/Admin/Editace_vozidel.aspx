<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            znacka:
            <asp:TextBox ID="znackaTextBox" runat="server" Text='<%# Bind("znacka") %>' />
            <br />
            model:
            <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' />
            <br />
            motorizace:
            <asp:TextBox ID="motorizaceTextBox" runat="server" Text='<%# Bind("motorizace") %>' />
            <br />
            spz:
            <asp:TextBox ID="spzTextBox" runat="server" Text='<%# Bind("spz") %>' />
            <br />
            Jmeno:
            <asp:TextBox ID="JmenoTextBox" runat="server" Text='<%# Bind("Jmeno") %>' />
            <br />
            Prijmeni:
            <asp:TextBox ID="PrijmeniTextBox" runat="server" Text='<%# Bind("Prijmeni") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizovat" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Storno" />
        </EditItemTemplate>
        <InsertItemTemplate>
            znacka:
            <asp:TextBox ID="znackaTextBox" runat="server" Text='<%# Bind("znacka") %>' />
            <br />
            model:
            <asp:TextBox ID="modelTextBox" runat="server" Text='<%# Bind("model") %>' />
            <br />
            motorizace:
            <asp:TextBox ID="motorizaceTextBox" runat="server" Text='<%# Bind("motorizace") %>' />
            <br />
            spz:
            <asp:TextBox ID="spzTextBox" runat="server" Text='<%# Bind("spz") %>' />
            <br />
            Jmeno:
            <asp:TextBox ID="JmenoTextBox" runat="server" Text='<%# Bind("Jmeno") %>' />
            <br />
            Prijmeni:
            <asp:TextBox ID="PrijmeniTextBox" runat="server" Text='<%# Bind("Prijmeni") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Vložit" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Storno" />
        </InsertItemTemplate>
        <ItemTemplate>
            znacka:
            <asp:Label ID="znackaLabel" runat="server" Text='<%# Bind("znacka") %>' />
            <br />
            model:
            <asp:Label ID="modelLabel" runat="server" Text='<%# Bind("model") %>' />
            <br />
            motorizace:
            <asp:Label ID="motorizaceLabel" runat="server" Text='<%# Bind("motorizace") %>' />
            <br />
            spz:
            <asp:Label ID="spzLabel" runat="server" Text='<%# Bind("spz") %>' />
            <br />
            Jmeno:
            <asp:Label ID="JmenoLabel" runat="server" Text='<%# Bind("Jmeno") %>' />
            <br />
            Prijmeni:
            <asp:Label ID="PrijmeniLabel" runat="server" Text='<%# Bind("Prijmeni") %>' />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Vypis" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>

