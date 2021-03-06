<%@page import="java.util.List"%>
<%@ page language="java"  pageEncoding="UTF-8" %>

<!doctype html>
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
                <a href = "activite.html" class="nav-link" href="#">Activité</a>
            </li>
          </ul>
        </div>
      </nav>

		<div class="row mb-2">
		

		<div class="col-3">
		<div>
		<div>
			<img src= "" class="img-fluid img-thumbnail" alt="Responsive image">
		</div>
		</div>
   </div>

   <div class="col-sm-6">
   <div class="row mb-2">
		<h1>NOM Prenom - Matricule</h1>
</form>
  </div>
  <div id="accordion">
<div class="card">
  <div class="card-header" id="headingOne">
    <h5 class="mb-0">
      <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        Identité
      </button>
    </h5>
  </div>

  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
    <div class="card-body">
      <div class="form-group">
      <label for="exampleFormControlSelect1">Civilité</label>
      <select class="form-control" id="exampleFormControlSelect1">
        <option>M.</option>
        <option>Mme.</option>
      </select>
      <div class="invalid-feedback">
      La civilité est obligatoire.
      </div>
      <div class="form-group">
          <label for="exampleFormControlInput1">Nom</label>
          <input type="text" class="form-control" id="exampleFormControlInput1">
          <div class="invalid-feedback">
          Le Nom est obligatoire.
          </div>
      </div>
      <div class="form-group">
          <label for="exampleFormControlInput1">Prénom</label>
          <input type="text" class="form-control" id="exampleFormControlInput1">
          <div class="invalid-feedback">
          Le Prénom est obligatoire.
          </div>
      </div>
      <div class="form-group">
          <label for="exampleFormControlInput1">Date de naissance</label>
          <input type="date" class="form-control" id="exampleFormControlInput1">
          <div class="invalid-feedback">
          La date de naissance est obligatoire.
          </div>
      </div>
      <div class="form-group">
    <label for="exampleFormControlTextarea1">Adresse</label>
    <textarea type="text class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
    <div class="invalid-feedback">
    L'Adresse est obligatoire.
    </div>
  </div>
      <div class="form-group">
          <label for="exampleFormControlInput1">Numéro de sécurité sociale</label>
          <input type="text" class="form-control" id="exampleFormControlInput1">
          <div class="invalid-feedback">
          Le Numéro de sécurité sociale est obligatoire.
          </div>
      </div>
    </div>
  </div>
</div>
<div class="card">
  <div class="card-header" id="headingTwo">
    <h5 class="mb-0">
      <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Poste
      </button>
    </h5>
  </div>
  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
    <div class="card-body">
      <div class="form-group">
      <label for="exampleFormControlSelect1">Département</label>
      <select class="form-control" id="exampleFormControlSelect1">
        <option>Comptabilité</option>
        <option>Ressources humaine</option>
        <option>Informatique</option>
      </select>
      <div class="invalid-feedback">
      Le département est obligatoire.
      </div>
    </div>
    <div class="form-group">
        <label for="exampleFormControlInput1">Nom</label>
        <input type="text" class="form-control" id="exampleFormControlInput1">
        <div class="invalid-feedback">
        Le Nom est obligatoire.
        </div>
    </div>
  </div>
</div>
<div class="card">
  <div class="card-header" id="headingThree">
    <h5 class="mb-0">
      <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Coordonnées Bancaires
      </button>
    </h5>
  </div>
  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
    <div class="card-body">
      <div class="form-group">
          <label for="exampleFormControlInput1">IBAN</label>
          <input type="text" class="form-control" id="exampleFormControlInput1">
          <div class="invalid-feedback">
          Le IBAN est obligatoire.
          </div>
      </div>
      <div class="form-group">
          <label for="exampleFormControlInput1">BIC</label>
          <input type="text" class="form-control" id="exampleFormControlInput1">
          <div class="invalid-feedback">
          Le BIC est obligatoire.
          </div>
      </div>
    </div>
  </div>
</div>
</div>
      </div>
		<div class="form-group row">
		     <div class="col offset-8">
			     <div class = text-right><a href= "<%=request.getContextPath() %>/views/collab/listerCollaborateurs.jsp" type="submit" class="btn btn-primary sm">Sauvegarder</a></div>
        </div>
    </div>
  </div>
</form>
</div>
    <div class="col">
        <label class="form-check-label">
          <div class="form-check"></div>
          <input class="form-check-input" type="checkbox">voir les collaborateur désactivé</input>
        </label>
    </div>
    <script src="script.js"></script>
    </body>
</html>