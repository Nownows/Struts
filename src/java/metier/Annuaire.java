/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;

import java.util.ArrayList;
import java.util.List;


public class Annuaire {
    private String nom;
    private List<Abonne> lesAbonnes = new ArrayList<Abonne>();
    
    public Annuaire(){
        
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public List<Abonne> getLesAbonnes() {
        return lesAbonnes;
    }

    public void setLesAbonnes(List<Abonne> lesAbonnes) {
        this.lesAbonnes = lesAbonnes;
    }


    
}
