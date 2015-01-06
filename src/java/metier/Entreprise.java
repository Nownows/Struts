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
public class Entreprise extends Abonne{
    private String raisonSociale;
    
    public Entreprise(String login, String mdp, String mail,String raisonSociale) {
        super(login,mdp,mail);
        this.raisonSociale = raisonSociale;
    }
    
    public Entreprise(){
        
    }

    public String getRaisonSociale() {
        return raisonSociale;
    }

    public void setRaisonSociale(String raisonSociale) {
        this.raisonSociale = raisonSociale;
    }
    
}
