/*

 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import static com.opensymphony.xwork2.Action.INPUT;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import metier.Abonne;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import util.HibernateUtil;

public class ValiderIdentification extends ActionSupport implements ModelDriven, SessionAware {

    /*private String identifiant;
     private String motdepasse;*/
    private Abonne unAbon = new Abonne();
    private Session uneSession;
    SessionMap<String, String> sessionmap;

    public Abonne getUnAbon() {
        return unAbon;
    }

    public void setUnAbon(Abonne unAbon) {
        this.unAbon = unAbon;
    }

    /*public String getIdentifiant() {
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
     }*/
    public String execute() throws Exception {
        uneSession = HibernateUtil.currentSession();
        Abonne unAbon2 = (Abonne) uneSession.get(Abonne.class, unAbon.getLogin());
        if (unAbon2 == null) {
            addActionError("L'abonné n'existe pas !");
            return INPUT;
        }
        this.setSession(sessionmap);
        return SUCCESS;

    }

    public Object getModel() {
        return unAbon;
    }

    public void setSession(Map map) {
        sessionmap = (SessionMap) map;
        sessionmap.put("login", unAbon.getLogin());
    }
}
