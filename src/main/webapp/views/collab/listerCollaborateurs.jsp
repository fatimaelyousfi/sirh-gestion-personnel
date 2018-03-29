<%@page import="java.util.List" %>
<%@page import="dev.sgp.entite.*"%>
<%@ page language="java" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7-
	dist/css/bootstrap.css">
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
              <a href = "statistique.html" class="nav-link" href="#">Statistique</a>
            </li>
            <li class="nav-item">
              <a href = "activite.html" class="nav-link" href="#">Activité</a>
            </li>
          </ul>
        </div>
      </nav>

      <div class="col offset-10">
        <a href = "<%=request.getContextPath() %>/views/collab/CreerCollaborateur.jsp" class="btn btn-primary" >Ajouter un nouveau collaborateur</a> //ici
      </div>


    <h1>Les collaborateurs</h1>

    <div class="container">
      <div class="row">
          <form >
              <div class="form-group row ">
                <label class="col">Rechercher un nom ou un prénom qui commence par:</label>
                <div class="col">
                  <input type="text" class="border border-primary">
                </div>

                <label for="inputSearch" class="sr-only col">Search</label>
                <div class="col">
                  <button type="submit" class="btn btn-primary sm">Recherche </button>
                </div>
                <div class="col">
                    <label class="form-check-label">
                      <div class="form-check"></div>
                      <input class="form-check-input" type="checkbox">voir les collaborateurs désactivés</input>
                    </label>
                </div>
              </div>
          </form>
        </div>
    </div>
    <div class="col">
    <div class="row mb-2">
        <div class="dropdown">
        <label>Filtrer par département:</label>
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Tous
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">Tous</a>
            <a class="dropdown-item" href="#">Comptabilité</a>
            <a class="dropdown-item" href="#">Ressources Humaine</a>
            <a class="dropdown-item" href="#">Informatique</a>
          </div>
      </div>
    </div>
    </div>
    <div class="row">
 <%List<Collaborateur> listCollab = (List<Collaborateur>)request.getAttribute("colab"); 
 for (Collaborateur collaborateurs: listCollab) {%>

      <div class="col-sm-12 col-lg-4 col-mg-6 pl-5 pt-5">
              <div class="card text-white bg-secondary mb-3" style="max-width: 20rem;">
                      <div class="card-header"><%=collaborateurs.getNom() %> <%=collaborateurs.getPrenom() %></div>
                      <div class="card-body">
                            <img src=<%=request.getContextPath()+ collaborateurs.getPhoto() %> class="img-fluid img-thumbnail" alt="Responsive image">
                            <ul>
                            	<li> <%=collaborateurs.getMatricule() %></li>
                               <li>Date de création <%=collaborateurs.getDateHeureCreation() %></li>
                               <li> Email: <%=collaborateurs.getPrenom() %>.<%=collaborateurs.getNom() %>@societe.com</li>
                               <li>Adresse: <%=collaborateurs.getAdresse() %></li>
                            </ul>
                          </div>
                             <div class= text-right><a href= "<%=request.getContextPath() %>/views/collab/EditerCollaborateurs.jsp" type="submit" class="btn btn-primary sm">Edider</a></div>
                     </div>
      </div>
      <% } %>
        </div>
        <script src="script.js"></script>
    </body>
</html>





