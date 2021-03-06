﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editUsuario.aspx.cs" Inherits="GestionEmpresas.Privada.editUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editar Usuario</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">
             <br /><br />
            <div class="panel panel-primary text-center col-md-8 col-md-offset-2">
                <div class="panel-heading"> <h1> Editar Usuario </h1></div>
                    <div class="panel-body">
                       <br /><br />
                       <article class="col-md-11 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="lg" runat="server">Login</asp:Label>   
                            </section>                       
                            <section class="col-md-4">
                                     <asp:TextBox id="login" runat="server" CssClass="form-control text-center"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server"
                                             ErrorMessage="Debes rellenar el login" ControlToValidate="login" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                            </section>
                        </article><br /><br /><br /><br /><br /><br />

                        <article class="col-md-11 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="nm" runat="server">Nombre</asp:Label>   
                            </section>                       
                            <section class="col-md-4">
                                <asp:TextBox ID="nombre" runat="server" CssClass="form-control text-center"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                         ErrorMessage="Debes rellenar el nombre" ControlToValidate="nombre" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                         ErrorMessage="Solo se admiten letras" ValidationExpression="[A-Za-z ]*" CssClass=" alert-danger" ControlToValidate="nombre"></asp:RegularExpressionValidator>         
                            </section>
                        </article><br /><br /><br /><br /><br /><br />

                        <article class="col-md-11 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="ps" runat="server">Contraseña</asp:Label>                        
                            </section>
                            <section class="col-md-4">
                                <asp:TextBox ID="pass" runat="server" TextMode="password" CssClass="form-control text-center"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                         ErrorMessage="Debes rellenar el campo contraseña" ControlToValidate="pass" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                         ErrorMessage="La contraseña debe tener minimo una letra mayuscula, minnuscula y un numero. La longitud debe ser entre 6-20" 
                                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$" CssClass="alert-danger" ControlToValidate="pass"></asp:RegularExpressionValidator> 
                            </section>
                        </article>

                        <article class="col-md-11 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="pw" runat="server">Repetir contraseña</asp:Label>                        
                            </section>
                            <section class="col-md-4">
                                <asp:TextBox ID="rpass" runat="server" TextMode="password" CssClass="form-control text-center"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                         ErrorMessage="Debes rellenar el campo repetir contraseña" ControlToValidate="rpass" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator" runat="server" ControlToValidate="pass" ControlToCompare="rpass"  CssClass="glyphicon glyphicon-asterisk alert-danger" ErrorMessage="Las contraseñas no coinciden">  
                                        </asp:CompareValidator> 
                            </section>
                        </article> <br /><br /><br /><br /><br /><br /><br />
                        <asp:Label ID="lblError" runat="server" CssClass="label label-danger " Text="Label"></asp:Label>
                        <br /><br /><br /><br /><br /><br /><br /><br />

                        <footer class="col-md-12 col-md-offset-1">             
                            <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-danger col-md-4" OnClick="Volver" CausesValidation="False"  />
                            <asp:Button ID="editUser" runat="server" Text="Editar cambios" CssClass="btn btn-success col-md-4 col-md-offset-2" OnClick="btnEditarUser" OnClientClick="return confirm('¿Deseas guardar los cambios realizados?');" /> 
                        </footer>
                        <br /><br /><br />
              </div> <!-- panel-heading -->
            </div> <!-- panel panel-primary -->
        </div> <!-- Fin del row -->
    </div> <!-- Fin del container -->
    </form>
</body>
</html>
