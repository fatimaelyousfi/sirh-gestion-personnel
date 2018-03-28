package dev.sgp.util;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.service.CollaborateurService;

public interface Constantes {
	// constante a ajouter
	CollaborateurService COLLAB_SERVICE = new CollaborateurService();
}
