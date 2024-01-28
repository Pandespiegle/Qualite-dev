<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/_00_ASBank2023/style/style.css" />
    <title>Changement de mot de passe</title>
</head>
<body>
    <h1>Login :</h1>
    <s:form name="formModifPw" action="modifPw"
            method="POST">
        <input type = "hidden" name="token"
               value=${param.token}>
        <s:password label="Mot de passe" name="pw" />
        <s:password label="Confirmer le mot de passe" name="confPw" />
        <s:submit name="Confirmer" />
    </s:form>
</body>
</html>
