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
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// utilisation du service
		
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		
		req.setAttribute("colab", collaborateurs);
		this.getServletContext().getRequestDispatcher("/views/collab/listerCollaborateurs.jsp").forward(req, resp);

	}
}