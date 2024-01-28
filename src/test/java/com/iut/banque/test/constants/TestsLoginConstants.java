package com.iut.banque.test.constants;

import com.iut.banque.constants.LoginConstants;
import com.iut.banque.modele.MailSender;
import org.junit.Assert;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class TestsLoginConstants {

    @Test
    public void testConstants() {
        Assert.assertEquals(-1, LoginConstants.LOGIN_FAILED);
        Assert.assertEquals(2, LoginConstants.MANAGER_IS_CONNECTED);
        Assert.assertEquals(1, LoginConstants.USER_IS_CONNECTED);
        Assert.assertEquals(-2, LoginConstants.ERROR);
    }

}