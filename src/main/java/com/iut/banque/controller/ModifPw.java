package com.iut.banque.controller;
import com.opensymphony.xwork2.ActionSupport;


public class ModifPw extends ActionSupport {
    private String pw;
    private String confPw;
    private String token;

    /**
     * Getter du champ pw
     *
     * @return String, le mot de passe
     */
    public String getPw() {
        return pw;
    }

    /**
     * Setter du champ pw
     *
     * @param pw
     *            : correspondant au mot de passe
     */
    public void setPw(String pw) {
        this.pw = pw;
    }

    /**
     * Getter du champ pw
     *
     * @return String, la confirmation du mot de passe
     */
    public String getConfPw() {
        return confPw;
    }

    /**
     * Setter du champ confPw
     *
     * @param confPw
     *            : correspondant a la confirmation du mot de passe
     */
    public void setConfPw(String confPw) {
        this.confPw = confPw;
    }

    /**
     * Getter du champ token
     *
     * @return String, le token
     */
    public String getToken() {
        return token;
    }

    /**
     * Setter du champ token
     *
     * @param token
     *            : correspondant au token
     */
    public void setToken(String token) {
        this.token = token;
    }


    public void tmodifPw(){
        System.out.println(pw + " " + confPw + " " + token);
    }


}
