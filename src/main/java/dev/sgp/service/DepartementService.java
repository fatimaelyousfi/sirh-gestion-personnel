package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;


import dev.sgp.entite.Departement;

public class DepartementService {
	
	List<Departement> listeDepartement = new ArrayList<>();
	
	public List<Departement> listerDepartement() {
		return listerDepartement();
	}

	public void sauvegarderDepartement(Departement departement) {
		listeDepartement.add(departement);
	}
}
