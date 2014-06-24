octocognoso
===========
![OctoPoulpe](http://openclipart.org/image/300px/svg_to_png/20079/rg1024_Little_octopus.png "Poulpe")

_La connaissance collaborative_

*octo:* De l'octopussy de github.

*cognoso:* "Vous savez", en latin.

Regroupement de prises de notes de cours pour tous !


## Conventions

Voici quelques standards à respecter si vous souhaitez contribuer à ce projet de notation de cours.

### Contenu des fichiers
La syntaxe est laissée libre mais un fichier doit obligatoirement contenir la date de la prise de notes au début du document.

Chaque contributeur est libre de suivre ses envies concernant la mise en forme et la personnalisation.

Si des ressources sont nécessaires (fichiers tex), les placer dans un sous-dossier res/
Pas de contraites particulières concernant ce dossier pour l'instant.

De manière générale, évitez de mettre dans vos documents
- Le nom des intervenants et votre vrai nom
- Une référence à notre école
- Des informations fausses. Si vous avez un doute, marquez-le !

Si des contenus copyrightés ont leur place dans le dossier d'une UV, préférez les liens vers une source externe à l'upload d'un fichier dont vous n'avez pas les droits. C'est par exemple le cas du cours original de nos enseignants.

### Encodage
UTF-8 si vous utilisez un éditeur où la question peut se poser. (vim, etc.)

### Structure de fichiers

    UVxx/
        UVxx.Sxx.TYPExx.Pseudo.ext

##### L'identifiant du semestre :
P pour printemps, A pour automne,
Année en 2 chiffres. Exemple : P14

##### Les types de notes :
- CM pour cours magistral
- TD pour travaux dirigés
- TP pour travaux pratiques
- CF pour conférence
- SY pour synthèses
- RS pour ressources (scan d'articles, etc.)
- OT pour autres types de notes

##### Le pseudo :
Évitez d'utiliser voter vrai nom, un pseudo est plus approprié

##### Extensions de fichier autorisées :
```
.txt
.nfo
.markdown (obligatoire si vous tapez en markdown, format fortement recommandé)
.tex
```

##### Extensions de fichier déconseillées mais acceptées :
```
.doc
.docx
.pdf
.png
.jpg
.gif
```

##### Exemple :

    IF03/
        IF03.P13.CM01.uZer.markdown
        IF03.P14.CM01.nanoF.txt
        IF03.P14.TP01.nanoF.markdown

    RE12/
        res/
            image01.jpg
        RE12.P14.CM01.uZer.markdown
        RE12.P14.CM01.ArchiFleKs.tex
