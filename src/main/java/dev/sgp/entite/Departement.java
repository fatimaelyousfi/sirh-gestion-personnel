package dev.sgp.entite;

public class Departement {
	int id;
	String nom;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	
	public Departement(int id, String nom){
		this.id = id;
		this.nom = nom;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}
	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
}
