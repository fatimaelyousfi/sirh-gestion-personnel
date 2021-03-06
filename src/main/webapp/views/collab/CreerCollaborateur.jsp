<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-
	dist/css/bootstrap.css">
  <head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-
    scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/4.0.0/journal/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
  <script>
function insererCollab(){
	var numero=document.getElementById("numero").value;
	var nom=document.getElementById("nom").value;
	var prenom=document.getElementById("prenom").value;
	var date=document.getElementById("date").value;
	var adresse=document.getElementById("adresse").value;
	var value = JSON.stringify({nom: nom, numero: numero, prenom: prenom, date: date, adresse: adresse});
	//localStorage.setItem("collaborateur", value);
	
	var valeur = localStorage.getItem("collaborateur");
	var collaborateur = JSON.parse(valeur);
	
	document.forms[0].submit();
	
}
</script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Menu</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">collaborateur <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Statistique</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Activité</a>
            </li>
          </ul>
        </div>
      </nav>
      <h1>Nouveau Collaborateur</h1>
  <div class="col offset-1">
   <div class="row">
          <form method="POST" action="<%=request.getContextPath() %>/collaborateurs/creer">
			<div class="form-group row">
				<label class="col-sm-2 col-2 col-form-label">Nom</label>
				<div class="col">
				<input type="text" class="form-control" name="nom" id="nom" aria-describedby="inputGroupPrepend3" required>
						<div class="invalid-feedback">
						Le nom est obligatoire.
						</div>
				</div>
            </div>
			<div class="form-group row">
				<label class="col-sm-2 col-2 col-form-label">Prénom</label>
				<div class="col">
                <input type="text" class="form-control" name="prenom" id="prenom" aria-describedby="inputGroupPrepend3" required>
						<div class="invalid-feedback">
						Le Prénom est obligatoire.
						</div>
				</div>
            </div>
			<div class="form-group row">
				<label class="col-sm-2 col-2 col-form-label">Adresse</label>
				<div class="col">
                <input type="text" class="form-control" name="adresse" id="adresse" aria-describedby="inputGroupPrepend3" required>
            <div class="invalid-feedback">
						L'adresse est obligatoire.
						</div>
				</div>
            </div>
			<div class="form-group row">
				<label class="col-sm-2 col-2 col-form-label">Date de naissance</label>
				<div class="col">
                <input type="date" class="form-control" name="dateDeNaissance" id="date" aria-describedby="inputGroupPrepend3" required>
						<div class="invalid-feedback">
						La date de naissance est obligatoire.
						</div>
				</div>
            </div>
			<div class="form-group row">
				<label class="col-sm-2 col-2 col-form-label">Numéro de sécurité sociale</label>
				<div class="col">
                <input type="text" class="form-control" name="numeroDeSecuriteSociale" id="numero" aria-describedby="inputGroupPrepend3" required>
						<div class="invalid-feedback">
						Le numéro de sécurité sociale est obligatoire.
						</div>
				</div>
          </div>
            <div class="form-group">
			<button onclick="confirmer()" type="button" id="buttoncreer" class="btn btn-primary btn-lg" >
                Créer
            </button>
            </div>
            </div>
			     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="annuler" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">
                                        Création d'un collaborateur</h4>
                                </div>
                                <div class="modal-body">
									Vous étes sur le point de creer un nouveau collaborateur</br>
                                    Nom<asp:TextBox ID="Nom" runat="server" placeholder="Nom" class="form-control"></asp:TextBox><br />
                                    <p id="nomModal"></p>
                                    Prénom<asp:TextBox ID="Prenom" runat="server" placeholder="Prenom" class="form-control"></asp:TextBox><br />
                                    <p id="prenomModal"></p>
                                    Date de naissance<asp:TextBox ID="Date" runat="server" placeholder="Adresse" class="form-control"></asp:TextBox><br />
                                    <p id="dateModal"></p>
                                    Adresse<asp:TextBox ID="Adresse" runat="server" placeholder="Date" class="form-control"></asp:TextBox><br />
                                    <p id="adresseModal"></p>
									Numéro de sécurité sociale<asp:TextBox ID="Numero" runat="server" placeholder="numero" class="form-control"></asp:TextBox><br />
                                    <p id="numModal"></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">
                                        annuler</button>
                                    <button id="inserer" type="button"  class="btn btn-primary" onclick="insererCollab()">
                                        confirmer</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </form>
     </div>
<script src="script.js"></script>

    </body>
</html>