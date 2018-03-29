package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateursController extends HttpServlet {
	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	{

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// utilisation du service

		String creationParam = req.getParameter("nom");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		String matriculeParam = req.getParameter("matricule");
		String adresseParam = req.getParameter("adresse");
		String dateDeNaissanceParam = req.getParameter("dateDeNaissance");
		String numeroDeSecuriteSocialeParam = req.getParameter ("numeroDeSecuriteSociale");
		String photoParam = "/images/personnage-png.png";
		String emailProParam = req.getParameter("emailPro");
		
		if(numeroDeSecuriteSocialeParam.length() == 15 && numeroDeSecuriteSocialeParam.matches( "\\d+")){
		Collaborateur collab = new Collaborateur( nomParam, prenomParam, adresseParam, dateDeNaissanceParam, numeroDeSecuriteSocialeParam, photoParam, emailProParam );
		collabService.sauvegarderCollaborateur(collab);
		
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		
		req.setAttribute("colab", collaborateurs);
		this.getServletContext().getRequestDispatcher("/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		}
		resp.sendError(400, "Un matricule est attendu");

	}
}
