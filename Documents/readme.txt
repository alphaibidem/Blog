Pour pouvoir reconstituer mon site il vous faudra avoir mon script "wordpress.s1" ce qui permettra de télécharger les différentes images dont vous aurez besoin.
Vérifiez que votre Docker est à jour, ensuite placez les deux dossiers " base " et " html " sur votre PC puis modifier deux lignes dans le script correspondantes aux nouveau chemins des dossiers dans votre PC.
Dans la première ligne de la création du conteneur base de donnée après "volume" vous mettrez le chemin d'accès au dossier "BDD" sur votre pc
 (Attention ne selectionner que jusqu'au deux points qui sont suivis de "/var/lib/mysql").
Dans la première ligne de la création du conteneur Wordpress après "volume" vous mettrez le chemin d'accès au dossier "Wordpress" sur votre pc
 (Attention ne selectionner que jusqu'au deux points qui sont suivis de "/var/www/html").
Une fois ces modifications apportées il vous suffira de démarer Docker,d'exécuter le scipt powershell et mon site ainsi que ma base de donnée seront parfaitement installés sur votre Pc.