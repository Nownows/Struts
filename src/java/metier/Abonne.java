package metier;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Abonne {

    @Id
    private String login;
    private String mdp;
    private String email;
    @OneToMany(fetch = FetchType.LAZY, mappedBy="abonne")
    private List<Message> messages = new ArrayList<Message>();

    public Abonne(String login, String mdp, String email) {
        this.login = login;
        this.mdp = mdp;
        this.email = email;
    }
    
    public Abonne(){
        
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Message> getMessages() {
        return messages;
    }

    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }

}
