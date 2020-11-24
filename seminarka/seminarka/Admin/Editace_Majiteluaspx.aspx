<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
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
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Jmeno:
            <asp:Label ID="JmenoLabel" runat="server" Text='<%# Bind("Jmeno") %>' />
            <br />
            Prijmeni:
            <asp:Label ID="PrijmeniLabel" runat="server" Text='<%# Bind("Prijmeni") %>' />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Majitel]"></asp:SqlDataSource>
</asp:Content>

