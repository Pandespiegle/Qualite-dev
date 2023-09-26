
# Semaine 38

### Déploiement de l'application (en cours)

Lors de la réception des sources du projet, la première étape a été de les importer dans l'IDE. Nous avons choisi IntelliJ, puis sélectionné l'option "Maven project".

![](photos/38/OpenProject.png)

Suite à cela, nous avons tenté de construire le projet en utilisant la commande `mvn clean install`. Cependant, nous avons rencontré 39 erreurs provenant des tests. Il est possible de construire le projet sans exécuter les tests en ajoutant l'option suivante à la commande : `mvn clean install -DskipTests`. Cette commande génère un fichier {nom_projet}.war dans le dossier "target" à la racine du projet.

![](photos/38/BuildSuccess.png)

Avec ce fichier war, nous avons essayé de lancer l'application (théoriquement) en le plaçant dans le dossier "webapps" de Tomcat, puis en lançant le serveur.

![](photos/38/tomcat.png)

Les premières difficultés sont apparues à ce stade. En effet, en accédant à Tomcat via "localhost:8080/{nom_projet}", nous avons été redirigés vers une page d'erreur 404 avec le message "no Action mapped for namespace '/' and action.". Nous avons supposé que cette erreur devait provenir de Struts.


![](photos/38/404.png)

Il était possible d'accéder aux différents fichiers JSP du projet sans avoir les contrôleurs et l'ORM en modifiant la structure du dossier généré par Tomcat. En effet, le fichier war est décompressé et crée un dossier avec deux sous-dossiers, "WEB-INF" et "META-INF". En examinant le contenu de "WEB-INF", nous avons trouvé les différents fichiers de l'application, y compris les fichiers JS, JSP et CSS. En déplaçant ces dossiers à la racine, il était possible d'accéder aux différentes vues.

![](photos/38/IndexJSP.png)

Mais maintenant nous sommes bloqué depuis presque 5 jours sans aucunes avancées sur le déploiement.
