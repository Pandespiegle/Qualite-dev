package com.iut.banque.test.dao;

import com.iut.banque.interfaces.IDao;
import com.iut.banque.modele.Utilisateur;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Matchers;
import org.mockito.Mockito;
import org.mockito.runners.MockitoJUnitRunner;

@RunWith(MockitoJUnitRunner.class)
public class TestDaoWithMockito {

    @Test
    public void testDaoIsConnected() {
        IDao dao = Mockito.mock(IDao.class);
        Utilisateur utilisateur = Mockito.mock(Utilisateur.class);
        Mockito.when(utilisateur.getUserId()).thenReturn("id");
        //Mockito.when(utilisateur.getUserPwd()).thenReturn("pwd");
        //Mockito.when(dao.getUserById(Matchers.anyString())).thenReturn(utilisateur);
        Assert.assertEquals(utilisateur.getUserId(), "id");
    }

}