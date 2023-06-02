<%@ Page Title="" Language="C#" MasterPageFile="~/Giris.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-body">
                        <h5 class="text-center" style="font-size: x-large">Öğretmen Girişi</h5>
                        <form id="form1" runat="server">
                            <div class="mb-3">
                                <b>
                                    <label for="teacher-email" class="form-label">Email Adresi</label></b>
                                <%--<input type="email" class="form-control" id="teacher-email" aria-describedby="emailHelp">--%>
                                <asp:TextBox ID="TxtKullaniciAdi" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <b>
                                    <label for="teacher-password" class="form-label">Şifre</label></b>
                                <%--<input type="password" class="form-control" id="teacher-password">--%>
                                <asp:TextBox ID="TxtSifre" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="d-grid">
                                <%--<button type="submit" class="btn btn-primary">--%>
                                    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" class="btn btn-primary" OnClick="Button1_Click" />                                  
                            </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-body">
                        <h5 class="text-center" style="font-size: x-large">Öğrenci Girişi</h5>
                        <div class="mb-3">
                            <b>
                                <label for="teacher-email" class="form-label">Email Adresi</label></b>
                            <%--<input type="email" class="form-control" id="teacher-email" aria-describedby="emailHelp">--%>
                            <asp:TextBox ID="TxtOgrKullaniciAdi" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <b>
                                <label for="teacher-password" class="form-label">Şifre</label></b>
                            <%--<input type="password" class="form-control" id="teacher-password">--%>
                            <asp:TextBox ID="TxtOgrSifre" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="d-grid">
                            <%--<button type="submit" class="btn btn-primary">--%>
                            <asp:Button ID="Button2" runat="server" Text="Giriş Yap" class="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
            </form>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
</asp:Content>


