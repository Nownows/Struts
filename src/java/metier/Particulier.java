/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;

import javax.persistence.Entity;

/**
 *
 * @author ASUS
 */
@Entity
public class Particulier extends Abonne{
    private String nom;
    private String prenom;

    public Particulier(String login, String mdp, String mail,String nom, String prenom) {
        super(login,mdp,mail);
        this.nom = nom;
        this.prenom = prenom;
    }
    
    public Particulier(){
        
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


    
}
