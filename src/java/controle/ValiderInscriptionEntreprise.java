/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import metier.Entreprise;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class ValiderInscriptionEntreprise extends ActionSupport implements ModelDriven, SessionAware {
    
  private Entreprise unAbon = new Entreprise();
    
  private Map<String, Object> session;
    private Session uneSession;
    private Transaction tx;
  
   public Object getModel() {
          return unAbon;
    }
   
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public Entreprise getUnAbon() {
        return unAbon;
    }

    public void setUnAbon(Entreprise unAbon) {
        this.unAbon = unAbon;
    }
 
    public String execute() throws Exception { 
         
        uneSession = HibernateUtil.currentSession();
        Entreprise unAbon2 = (Entreprise) uneSession.get(Entreprise.class, unAbon.getLogin());
        if (unAbon2!=null)   
         { addActionError("L'abonné existe déjà !");
            return INPUT;
        }
        
        tx = uneSession.beginTransaction();
        
        uneSession.save(unAbon);
        tx.commit();
        
        session.put("unAbon", unAbon);
        System.out.println("Ajout dans l'annuaire de l'abonné : "+ ((Entreprise) session.get("unAbon")).getLogin());
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