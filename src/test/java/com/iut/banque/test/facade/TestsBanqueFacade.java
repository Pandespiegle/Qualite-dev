package com.iut.banque.test.facade;

import java.util.Map;
import com.iut.banque.modele.Compte;
import com.iut.banque.modele.Client;

import com.iut.banque.facade.BanqueFacade;

import com.iut.banque.modele.CompteAvecDecouvert;
import com.iut.banque.modele.Utilisateur;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;


import static org.junit.Assert.*;

/**
 * Class de test pour la DAO.
 *
 * L'annotation @Rollback n'est pas nécéssaire partout car par défaut elle est
 * true pour les méthodes de test.
 */
// @RunWith indique à JUnit de prendre le class runner de Spirng
@RunWith(SpringJUnit4ClassRunner.class)
// @ContextConfiguration permet de charger le context utilisé pendant les tests.
// Par défault (si aucun argument n'est précisé), cherche le fichier
// TestsDaoHibernate-context.xml dans le même dosssier que la classe

@ContextConfiguration("/test/resources/TestsBanqueFacade-context.xml")
@Transactional("transactionManager")

public class TestsBanqueFacade {

    @Autowired
    private BanqueFacade bf;

    @Test
    public void TestGetConnectedUser() {

        try {
            bf.logout();
            Assert.assertNull(bf.getConnectedUser());
            bf.tryLogin("a.lidell1", "toto");
            Assert.assertNotNull(bf.getConnectedUser());
        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }
    @Test
    public void TestTryLogin() {
        try {
            assertEquals(1, bf.tryLogin("a.lidell1", "toto"));
        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }

    @Test
    public void TestFailLogin() {
        try {
            assertEquals( -1,bf.tryLogin("admin", "aaa"));
        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }

    @Test
    public void TestGetAllClients() {
        try {
            assertEquals(null, bf.getAllClients());
        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }

    @Test
    public void TestGetCompte() {
        try {
            assertNull(bf.getCompte("aa"));
            assertNotNull( bf.getCompte("AB7328887341"));
        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }

    public void TestChangeDecouvert() {
        try {
            CompteAvecDecouvert c = (CompteAvecDecouvert) bf.getCompte("AB7328887341");
            bf.changeDecouvert(c, 125.0);
            Assert.assertEquals(125, c.getDecouvertAutorise());


        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }

    @Test
    public void TestDebiter() {
        try {
            Compte c = bf.getCompte("AB7328887341");
            Double solde = c.getSolde();
            bf.debiter(c, 10.0);
            Assert.assertEquals(solde-10.0, c.getSolde(), 0.001);

        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }

    @Test
    public void TestCrediter() {
        try {
            Compte c = bf.getCompte("AB7328887341");
            Double solde = c.getSolde();
            bf.crediter(c, 10.0);
            Assert.assertEquals(solde+10.0, c.getSolde(), 0.001);

        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }

    @Test
    public void TestGetClients() {
        try {
            bf.loadClients();
            assertNull(bf.getAllClients());
        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());
        }
    }

    @Test
    public void TestGetUser() {
        try {
            assertNull(bf.getUser("azer"));
            assertNotNull(bf.getUser("a.lidell1"));

        } catch (Exception e) {
            e.printStackTrace();
            fail("IllegalOperationException récupérée : " + e.getStackTrace());

        }
    }



}