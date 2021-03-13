package domain.model;

import java.time.LocalDate;

public class Boek {
    String titel;
    String autheur;
    int pagina, score;

    public Boek(String titel, String autheur, int pagina, int score){
    setTitel(titel);
    setAutheur(autheur);
    setPagina(pagina);
    setScore(score);
    }
    public void setTitel(String titel) {
        if (titel == null || titel.trim().isEmpty()){
            throw new IllegalArgumentException("titel mag niet leeg zijn");
        }
        this.titel = titel;
    }

    public void setAutheur(String autheur) {
        if (autheur == null || autheur.trim().isEmpty()){
            throw new IllegalArgumentException("autheur mag niet leeg zijn");
        }
        this.autheur = autheur;
    }

    public void setPagina(int pagina) {
        if (pagina <= 0){
            throw new IllegalArgumentException("aantal pagina's moet boven 0 zijn");
        }
        this.pagina = pagina;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getTitel() {
        return titel;
    }

    public String getAutheur() {
        return autheur;
    }

    public int getPagina() {
        return pagina;
    }

    public int getScore() {
        return score;
    }

    public boolean heeftTitel(String titel){
        return titel.equals(this.titel);
    }
}
