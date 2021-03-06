package dev.sgp.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req,

	HttpServletResponse rep) throws ServletException, IOException {

		String matricule= req.getParameter("matricule");
		rep.setContentType("text/html");
		if(matricule ==null){
		rep.sendError(400, "Un matricule est attendu");
		}
		rep.getWriter().write("la page s'affiche");
	
		rep.getWriter().write("<h1>Editer collaborateur</h1>" + "<ul>" + "<li>Matricule MO1</li>" + "</ul>");

	}
	@Override
	public void doPost(HttpServletRequest req,

	HttpServletResponse resp) throws ServletException, IOException {
		
		String matricule= req.getParameter("matricule");
		String titre= req.getParameter("titre");
		String nom= req.getParameter("nom");
		String prenom= req.getParameter("prenom");
		
		
		resp.setContentType("text/html");
		String msg= "Les paramètres suivants sont incorrects :";
		if (matricule == null || titre == null || nom == null || prenom == null  ){
			
		if(matricule == null){
		 msg = msg + " matricule ";
		}
		if(titre == null){
			 msg = msg + " titre ";	
		}
		if(nom == null){
			 msg = msg + " nom ";	
			
		}
		if(prenom == null){
			 msg = msg + " prenom ";	
		}
		resp.sendError(400, msg);
		}
		else {
			resp.getWriter().write("<h1>Editer collaborateur</h1>" + "<ul>" + "<li>Creation d'un collaborateur avec les informations suivantes :</li>" + "<li>matricule =" + matricule + "<li>titre =" + titre + "<li>nom =" + nom + "<li>prenom =" + prenom + "</li></ul>");
			resp.setStatus(201);
		}
		
	}
	}



