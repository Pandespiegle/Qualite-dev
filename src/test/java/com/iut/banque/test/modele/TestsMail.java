package com.iut.banque.test.modele;
import static org.junit.Assert.fail;
import com.iut.banque.modele.Client;
import static org.junit.Assert.*;
import org.junit.Test;
import com.iut.banque.modele.MailSender;

public class TestsMail {
    @Test
    public void testSendExistingAdress() {
        MailSender mailSender = new MailSender();
        assertTrue(mailSender.sendMail("bankiutmetz@gmail.com","test","test"));
    }

    @Test
    public void testSendNotExistingAdress() {
        MailSender mailSender = new MailSender();
        assertFalse(mailSender.sendMail("","test","test"));
    }



}