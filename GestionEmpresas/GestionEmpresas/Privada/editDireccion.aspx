﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editDireccion.aspx.cs" Inherits="GestionEmpresas.Privada.editDireccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editar Dirección</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">
             <br /><br />
            <div class="panel panel-primary text-center col-md-8 col-md-offset-2">
                <div class="panel-heading"> 
                    <h1> Editar dirección </h1>
                    - <asp:Label ID="labeldireccion" runat="server" Text=""></asp:Label> -
                </div>
                    <div class="panel-body">
                       <br /><br />

                       <article class="col-md-12 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="dom" runat="server"><h4>Domicilio</h4></asp:Label>   
                            </section>                       
                            <section class="col-md-4">
                                     <asp:TextBox id="domici" runat="server" CssClass="form-control text-center"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatornombreEmpresa" runat="server"
                                             ErrorMessage="Debes rellenar nombre comercial" ControlToValidate="domici" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionnombreEmpresa" runat="server"
                                             ErrorMessage="Solo se admiten letras y numeros" ValidationExpression="[A-Za-z0-9 ]*" CssClass="glyphicon glyphicon-remove alert-danger" ControlToValidate="domici"></asp:RegularExpressionValidator>
                            </section>
                        </article>

                        <article class="col-md-12 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="pob" runat="server"><h4>Población</h4></asp:Label>   
                            </section>                       
                            <section class="col-md-4">
                                <asp:TextBox ID="poblac" runat="server" CssClass="form-control text-center"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                         ErrorMessage="Debes rellenar el campo de población" ControlToValidate="poblac" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                         ErrorMessage="Solo se admiten letras" ValidationExpression="[A-Za-z ]*" CssClass="glyphicon glyphicon-remove alert-danger" ControlToValidate="poblac"></asp:RegularExpressionValidator>         
                            </section>
                        </article>

                        <article class="col-md-12 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="copo" runat="server"><h4>Codigo postal</h4></asp:Label>                        
                            </section>
                            <section class="col-md-4">
                                <asp:TextBox ID="cp" runat="server" CssClass="form-control  text-center"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                         ErrorMessage="Debes rellenar el codigo postal" ControlToValidate="cp" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                         ErrorMessage="Solo se admiten numeros" ValidationExpression="^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$" CssClass="glyphicon glyphicon-remove alert-danger" ControlToValidate="cp"></asp:RegularExpressionValidator>      
                            </section>
                        </article>

                        <article class="col-md-12 col-md-offset-2"> 
                            <section class="col-md-2 col-md-offset-1">
                                <asp:Label ID="pro" runat="server" ><h4>Provincia</h4></asp:Label>                        
                            </section>
                            <section class="col-md-4">
                                <asp:TextBox ID="provin" runat="server"  CssClass="form-control text-center"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                         ErrorMessage="Debes rellenar el campo de la provincia" ControlToValidate="provin" CssClass="glyphicon glyphicon-asterisk alert-danger"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                         ErrorMessage="Solo se admite texto" ValidationExpression="[A-Za-z ]*" CssClass="glyphicon glyphicon-remove alert-danger" ControlToValidate="provin"></asp:RegularExpressionValidator>      
                            </section>
                        </article><br /><br /><br /><br /><br /><br />
                        <asp:Label ID="lblError" runat="server" CssClass="label label-danger" Text="label"></asp:Label>
                        <footer class="col-md-12 col-md-offset-1">
                           
                            <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-danger col-md-4" OnClick="Volver" CausesValidation="False" />
                            <asp:Button ID="btnEnviar" runat="server" Text="Editar cambios" CssClass="btn btn-success col-md-4 col-md-offset-2" OnClick="editDirec" OnClientClick="return confirm('¿Deseas guardar los cambios realizados?');" /> 
                            
                        </footer>
                        <br /><br /><br />
              </div> <!-- panel-heading -->
            </div> <!-- panel panel-primary -->
        </div> <!-- Fin del row -->
    </div> <!-- Fin del container -->
    </form>
</body>
</html>
