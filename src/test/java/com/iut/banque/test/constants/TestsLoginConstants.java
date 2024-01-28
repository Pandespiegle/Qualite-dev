package com.iut.banque.test.constants;

import com.iut.banque.constants.LoginConstants;
import com.iut.banque.modele.MailSender;
import org.junit.Assert;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class TestsLoginConstants {

    @Test
    public void testConstants() {
        Assert.assertEquals(LoginConstants.LOGIN_FAILED, -1);
        Assert.assertEquals(LoginConstants.MANAGER_IS_CONNECTED, 2);
        Assert.assertEquals(LoginConstants.USER_IS_CONNECTED, 1);
        Assert.assertEquals(LoginConstants.ERROR, -2);
    }

}
