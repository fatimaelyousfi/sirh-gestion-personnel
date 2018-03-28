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

public class ListerCollaborateursController extends HttpServlet {
	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	{
		
		
		/*Collaborateur collabo = new Collaborateur();
		collabo.setMatricule("125455");
		collabo.setNom("el yousfi");
		collabo.setPrenom("fatima");
		collabo.setAdresse("15 boulevard ricard");
		collabo.setDateDeNaissance(LocalDate.parse("1989-02-01"));
		collabo.setNumeroDeSecuriteSociale("abcdefoks");
		collabo.setPhoto("image/png");
		collabo.setActif(true);
		collabo.setEmailPro("fatima.elyousfi83@gmail.com");
		collabo.setDateHeureCreation(ZonedDateTime.now());
		
		collabService.sauvegarderCollaborateur(collabo);*/
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// utilisation du service
		
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		
		req.setAttribute("colab", collaborateurs);
		this.getServletContext().getRequestDispatcher("/views/collab/listerCollaborateurs.jsp").forward(req, resp);

	}
}