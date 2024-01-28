package com.iut.banque.test.modele;

import com.iut.banque.modele.MailSender;
import org.junit.Test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class TestMail {
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
