# Theater Cinema Screen Mod

## Description

Ce mod ajoute un **écran de cinéma animé** pour Luanti / Minetest.
L’écran peut être allumé et éteint avec un clic droit, et affiche une animation vidéo à partir d’une texture contenant plusieurs frames.

---

## Fonctionnement

* **Clic droit** sur l’écran éteint → allume l’écran
* **Clic droit** sur l’écran allumé → éteint l’écran

L’animation fonctionne avec une seule texture contenant plusieurs images empilées verticalement (**vertical frames**).

---

## Format des textures

Pour que l’animation fonctionne correctement :

* Toutes les frames doivent avoir la **même taille**
* Exemple utilisé :

  * Largeur : `100 px`
  * Hauteur : `56 px`
* Nombre de frames : `9`

👉 Taille totale de l’image :

```
100 x 504 px (car 56 x 9 = 504)
```

* Les images doivent être **empilées verticalement**
* Aucun espace entre les frames
* Aucun pixel en trop (sinon décalage visuel)

---

## Exemple de configuration (dans init.lua)

```lua
tiles = {{
    name = "frame_002.png",
    animation = {
        type = "vertical_frames",
        aspect_w = 100,
        aspect_h = 56,
        length = 3.0
    }
}}

---

## Performance

⚠️ Important :

* Ce mod utilise une **seule texture animée**
* Cela évite :

  * le lag GPU
  * les crashs
  * l’effet mosaïque

---

## Licence

Ce mod est distribué sous la licence :

**GNU General Public License v3.0 (GPL-3.0)**

Vous êtes libre de :

* utiliser
* modifier
* redistribuer

Selon les termes de la GPL-3.0.

---

## Crédits

Ce mod a été **inspiré et basé en partie sur le mod HomeDecor** créé par :

**VanessaE**

Merci à elle pour son excellent travail sur les objets décoratifs dans Minetest.

---

## Auteur

Mod créé par :
Jack_The_Lab


Enjoy 🎬
