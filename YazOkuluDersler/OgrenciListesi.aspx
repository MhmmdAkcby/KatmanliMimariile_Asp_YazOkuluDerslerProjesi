<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OgrenciListesi.aspx.cs" Inherits="OgrenciListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div class="container mt-3">
        <h2>Öğrenci Listesi</h2>
        <p>Aşağıda yaz okuluna kayıt yaptıranların listesi bulunmaktadır</p>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Öğrenci ID</th>
                    <th>Öğrenci Ad</th>
                    <th>Öğrenci Soyad</th>
                    <th>Öğrenci Numara</th>
                    <th>Öğrenci Şifre</th>
                    <th>Öğrenci Fotoğraf</th>
                    <th>Öğrenci Bakiye</th>
                    <th>İşlemler</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("AD")%></td>
                            <td><%#Eval("SOYAD")%></td>
                            <td><%#Eval("NUMARA")%></td>
                            <td><%#Eval("SIFRE")%></td>
                            <td><%#Eval("FOTOGRAF")%></td>
                            <td><%#Eval("BAKIYE")%>₺</td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("ID") %>' ID="HyperLink1" CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                                <asp:HyperLink  NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("ID") %>' ID="HyperLink2" CssClass="btn btn-success" runat="server">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>

