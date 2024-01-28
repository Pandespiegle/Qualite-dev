package com.iut.banque.modele;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
public class MailSender {

    private final String username = "bankiutmetz@gmail.com";
    private final String password = "wfcm dxld pmyx gihd";

    /**
     * Fonction d'envoi de mail
     *
     * @param receiver l'adresse mail du destinataire
     * @param subject le sujet du mail
     * @param body le contenu du mail
     */
    public boolean sendMail(String receiver, String subject, String body){
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(receiver));
            message.setSubject(subject);
            message.setText(body);
            Transport.send(message);
        } catch(MessagingException e){
            System.out.println(e);
            return false;
        }
        return true;
    }

}
