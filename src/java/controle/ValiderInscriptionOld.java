/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import com.opensymphony.xwork2.ActionSupport;
import metier.Abonne;

public class ValiderInscriptionOld extends ActionSupport{
    
    private String identifiant;
    private String motdepasse;
    private String nom;
    private String prenom;

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }


    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    

    public String getIdentifiant() {
        return identifiant;
    }

    public void setIdentifiant(String identifiant) {
        this.identifiant = identifiant;
    }

    public String getMotdepasse() {
        return motdepasse;
    }

    public void setMotdepasse(String motdepasse) {
        this.motdepasse = motdepasse;
    }
    
    public String execute() throws Exception {
        // création de l'abonné
        Abonne unAbon = new Abonne();
        unAbon.setIdentifiant(identifiant);
        unAbon.setMotdepasse(motdepasse);
        unAbon.setNom(nom);
        unAbon.setPrenom(prenom);
        
        //Ajout dans l'annuaire  
        System.out.println("Ajout dans l'annuaire de l'abonné : "+ unAbon.getNom());
        return SUCCESS;
    }
    
  /*  public void validate() {
        if (identifiant.length()==0) {
            addFieldError("identifiant",getText("identifiant.required"));
        }
        if (motdepasse.length()==0) {
            addFieldError("motdepasse",getText("motdepasse.required"));
        }
        if (motdepasse.length()<5) {
            addFieldError("motdepasse",getText("motdepasse.length"));
        }
        if (nom.length()==0) {
            addFieldError("nom",getText("nom.required"));
        }
        if (prenom.length()==0) {
            addFieldError("prenom",getText("prenom.required"));
        }
    }*/
}