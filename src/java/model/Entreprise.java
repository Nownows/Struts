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
public class Entreprise extends Abonne{
    private String raisonSociale;
    
    public Entreprise(String login, String mdp, String email, String raisonSociale) {
        super(login, mdp, email);
        this.raisonSociale = raisonSociale;
    }

    public String getRaisonSociale() {
        return raisonSociale;
    }

    public void setRaisonSociale(String raisonSociale) {
        this.raisonSociale = raisonSociale;
    }   
}
