/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Main
 */
public class Particulier extends Abonne{
    private String nom;
    private String prenom;
    private String dateNaissance;

    public Particulier(String login, String mdp, String email, String nom, String prenom, String dateN) {
        super(login, mdp, email);
        this.nom = nom;
        this.prenom = prenom;
        this.dateNaissance = dateN;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(String dateNaissance) {
        this.dateNaissance = dateNaissance;
    }
    
    
}
