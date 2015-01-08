/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;
import metier.Message;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class ValiderMessage extends ActionSupport implements ModelDriven, SessionAware {

    /*private String identifiant;
     private String motdepasse;*/
    private Message unMessage = new Message();
    private Session uneSession;
    private Transaction tx;
    SessionMap<String, Long> sessionmap;

    public Message getUnMessage() {
        return unMessage;
    }

    public void setUnMessage(Message unMessage) {
        this.unMessage = unMessage;
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
        tx = uneSession.beginTransaction();
        
        uneSession.save(unMessage);
        tx.commit();
        
        return SUCCESS;

    }

    public Object getModel() {
        return unMessage;
    }

    public void setSession(Map map) {
        sessionmap = (SessionMap) map;
        sessionmap.put("id", unMessage.getId());
    }
}
