<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <br />
        <div class="container mt-3">
            <table class="table table-bordered">
                <thead>
                    <th>
                        <div class="text-start">
                            <asp:Label for="TxtAd" runat="server" Text="Öğrenci Adı:" Style="font-weight: bold"></asp:Label>
                            <asp:TextBox ID="TxtAd" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </th>
                    <th>
                        <div class="text-start">
                            <asp:Label for="TxtSoyad" runat="server" Text="Öğrenci Soyadı:" Style="font-weight: bold"></asp:Label>
                            <asp:TextBox ID="TxtSoyad" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </th>
                    <th>
                        <div class="text-start">
                            <asp:Label for="TxtNumara" runat="server" Text="Öğrenci Numara:" Style="font-weight: bold"></asp:Label>
                            <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </th>
                    <th>
                        <div class="text-start">
                            <asp:Label for="TxtSifre" runat="server" Text="Öğrenci Şifre:" Style="font-weight: bold"></asp:Label>
                            <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </th>
                    <th>
                        <div class="text-start">
                            <asp:Label for="TxtFotograf" runat="server" Text="Öğrenci Fotoğraf:" Style="font-weight: bold"></asp:Label>
                            <asp:TextBox ID="TxtFotograf" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </th>
                </thead>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" Text="KAYDET" OnClick="Button1_Click" CssClass="btn btn-info" />
        </div>
    </form>
</asp:Content>

