# Système des 41 Badges — Application FlashLearn
> Document de référence — Design & Gamification

---

## Vue d'ensemble

L'application dispose de **41 badges** organisés en **deux grands systèmes** :

| Système | Nombre de badges | Description |
|---|---|---|
| **Badges Évolutifs** | 17 badges | Progression générale, tous usages confondus |
| **Badges par Catégorie** | 24 badges | Spécialisation par matière académique |
| **Total** | **41 badges** | |

Chaque badge possède :
- Un **nom en langue africaine** (mooré, bambara, wolof, swahili, etc.)
- Un **sous-titre en français**
- Une **valeur XP** attribuée à l'obtention
- Une **condition de déclenchement** précise (quand)
- Une **procédure d'obtention** détaillée (comment)
- Une **récompense** concrète dans l'application

---

## SYSTÈME 1 — Badges Évolutifs (17 badges)

Les badges évolutifs récompensent la **progression générale** de l'élève dans l'application, indépendamment de la matière. Ils sont organisés en **5 niveaux de prestige**.

---

### Niveau 1 — Éveil (3 badges)

> *Premier contact avec l'application. L'élève découvre les fonctionnalités de base.*

---

#### 🌱 Baaré — *La Graine*
**Langue :** Mooré (Burkina Faso) | **XP :** +10

**Signification culturelle :** Dans la tradition mossi, *baaré* désigne la graine qui contient en elle tout le potentiel de l'arbre. C'est le premier souffle de l'apprentissage — discret, mais chargé de tout ce qui viendra.

**Quand :** Dès la première flashcard générée dans l'application.

**Comment :** Prendre en photo n'importe quelle page de cours et laisser l'IA générer la première flashcard. Aucune connexion requise.

**Récompense :** Badge découverte + message de bienvenue animé

---

#### 🐣 Akosua — *L'Éclose*
**Langue :** Twi (Ghana) | **XP :** +20

**Signification culturelle :** *Akosua* désigne une enfant née un dimanche en Twi — jour de lumière et de commencement. Comme la pintade qui sort de sa coquille, l'élève fait ses premiers pas dans la connaissance.

**Quand :** Après avoir généré 3 flashcards en une seule session.

**Comment :** Lancer une session de capture et produire au moins 3 flashcards sans fermer l'application. Il est possible d'utiliser plusieurs photos d'un même cours.

**Récompense :** Animation de célébration + accès au mode révision avancé

---

#### 🌊 Joliba — *L'Enfant du Fleuve*
**Langue :** Bambara (Mali) | **XP :** +30

**Signification culturelle :** *Joliba* est le nom bambara du fleuve Niger — artère de vie qui traverse les empires. Revenir chaque jour apprendre, c'est couler comme le fleuve : sans s'arrêter.

**Quand :** Après 3 jours de connexion consécutifs à l'application.

**Comment :** Ouvrir l'application et générer ou réviser au moins une flashcard chaque jour pendant 3 jours d'affilée. Le streak commence dès le premier jour.

**Récompense :** Streak journalier activé + indicateur de flamme visible

---

### Niveau 2 — Exploration (4 badges)

> *L'élève s'approprie les fonctionnalités principales et commence à construire ses habitudes d'apprentissage.*

---

#### 🦅 Horus-Abara — *L'Aigle en Vol*
**Langue :** Amharique (Éthiopie) | **XP :** +50

**Signification culturelle :** En amharique, *abara* évoque l'élévation. Horus, dieu-faucon de la vision chez les anciens Égypto-Nubiens, voit ce que les autres ignorent. L'apprenant qui monte dans les airs commence à tout voir.

**Quand :** Après avoir généré au total 10 flashcards dans l'application.

**Comment :** Accumuler 10 flashcards, toutes sessions confondues. Mixer les matières pour progresser plus vite. L'historique de la bibliothèque comptabilise tout.

**Récompense :** Nouveau fond de profil + accès à la bibliothèque publique

---

#### 🥁 Djeliba — *L'Apprenti Griot*
**Langue :** Mandingue (Sénégal / Guinée) | **XP :** +60

**Signification culturelle :** Le *djeliba* est le jeune griot en formation — celui qui écoute avant de parler, qui mémorise avant de réciter. Toute grande mémoire commence par une première révision complète.

**Quand :** Après avoir terminé sa première session de révision de flashcards de bout en bout.

**Comment :** Générer un set de flashcards, puis parcourir chacune d'elles en mode révision jusqu'à la dernière carte. Ne pas passer directement au QCM.

**Récompense :** Accès aux flashcards audio (lecture vocale) + badge animé

---

#### 🐊 Baoré — *Le Gardien Sacré*
**Langue :** Dioula (Burkina Faso / Côte d'Ivoire) | **XP :** +70

**Signification culturelle :** Les crocodiles sacrés de Sabou au Burkina Faso sont intouchables — gardiens ancestraux de la connaissance. *Baoré* est leur nom en dioula : celui qui veille sans relâche.

**Quand :** Après avoir complété 5 QCM ou quiz dans l'application.

**Comment :** Passer le QCM généré à la suite des révisions 5 fois. Peu importe le score — c'est la régularité qui compte pour ce badge.

**Récompense :** Mode QCM difficile débloqué + icône crocodile sur le profil

---

#### 🌍 Diallo-Fara — *Le Voyageur du Savoir*
**Langue :** Fulfuldé / Peul (Burkina Faso) | **XP :** +80

**Signification culturelle :** Les Peuls Fula ont traversé tout le Sahel de l'Atlantique au lac Tchad, porteurs de culture et d'échanges. *Fara* signifie "celui qui va loin" — l'apprenant curieux de toutes les disciplines.

**Quand :** Après avoir créé des flashcards dans au moins 3 matières différentes.

**Comment :** Générer des flashcards en Histoire, Maths, Français (ou autre). La catégorie est détectée automatiquement par l'IA ou assignée manuellement.

**Récompense :** Catégories de matières illimitées + filtres avancés débloqués

---

### Niveau 3 — Maîtrise (4 badges)

> *L'élève maîtrise le cycle complet de révision et développe sa régularité.*

---

#### 👑 Niani-Dô — *L'Héritier du Trône*
**Langue :** Soninké (Mali / Mauritanie) | **XP :** +120

**Signification culturelle :** Niani était la capitale de l'Empire du Mali de Soundjata Keïta. *Dô* en soninké signifie "la force intérieure". Atteindre 80 % au QCM, c'est prouver que la force est là.

**Quand :** Lors de la première réussite à un QCM avec un score supérieur ou égal à 80 %.

**Comment :** Réviser les flashcards, puis passer le QCM généré. Obtenir au moins 8 bonnes réponses sur 10. En cas d'échec, retourner aux flashcards et réessayer.

**Récompense :** Classement local activé + avatar doré débloqué

---

#### 🦁 Simba-Kali — *Le Lion Courageux*
**Langue :** Swahili (Afrique de l'Est) | **XP :** +150

**Signification culturelle :** *Simba* est le lion en swahili, *kali* signifie féroce et déterminé. Sept jours de révision sans faillir, c'est la discipline du lion qui ne lâche jamais sa proie.

**Quand :** Après avoir maintenu un streak de révision pendant 7 jours consécutifs.

**Comment :** Ouvrir l'application et interagir avec au moins une flashcard chaque jour pendant 7 jours sans interruption. Si un jour est manqué, le compteur repart à zéro.

**Récompense :** Thème visuel Lion débloqué + streak affiché sur le classement

---

#### 🎭 Do-Fing — *Le Masque Sacré*
**Langue :** Bwamu (Burkina Faso) | **XP :** +180

**Signification culturelle :** *Do* est l'esprit de la brousse chez les Bobo-Bwaba du Burkina Faso, incarné dans le masque *fing*. Porter ce masque, c'est incarner la maturité spirituelle et la maîtrise de soi.

**Quand :** Après avoir réussi 5 modules complets (révision + QCM ≥ 80 %) dans l'application.

**Comment :** Un module = 1 set de flashcards entièrement révisé + QCM réussi à 80 % minimum. Compléter ce cycle 5 fois, toutes matières confondues.

**Récompense :** Avatar masque personnalisable + accès aux thèmes culturels

---

#### 🌙 Nyambura — *La Gardienne de la Nuit*
**Langue :** Kikuyu (Kenya) | **XP :** +160

**Signification culturelle :** *Nyambura* est un prénom féminin kikuyu lié à la pluie et à la lune. Dans les traditions africaines, la nuit est le moment où les ancêtres parlent aux plus courageux qui veillent pour apprendre.

**Quand :** Après avoir lancé des révisions après 21 h, au moins 5 fois.

**Comment :** Ouvrir l'application et commencer une session de révision entre 21 h et minuit. Le fuseau horaire local est détecté automatiquement. 5 soirées non consécutives sont acceptées.

**Récompense :** Mode nuit avec fond étoilé africain + badge lumineux animé

---

### Niveau 4 — Légende (4 badges)

> *L'élève atteint un niveau de régularité et de générosité remarquable. Il devient une référence dans sa communauté scolaire.*

---

#### 🐘 Nzou-Mukuru — *L'Éléphant Ancien*
**Langue :** Shona (Zimbabwe) | **XP :** +250

**Signification culturelle :** *Nzou* est l'éléphant en shona, *mukuru* signifie le vieux, l'ancien. En culture africaine, l'éléphant ne perd jamais un souvenir — exactement comme l'élève qui accumule la connaissance.

**Quand :** Après avoir réussi 20 modules complets dans l'application.

**Comment :** Continuer à créer des sets de flashcards et à réussir les QCM associés. L'historique de la bibliothèque comptabilise tous les modules. Aucune limite de matière.

**Récompense :** Accès bibliothèque premium + titre "Grand Mémorisant" affiché

---

#### ⚔️ Naaba-Wend — *Le Guerrier Résilient*
**Langue :** Mooré (Burkina Faso) | **XP :** +280

**Signification culturelle :** *Naaba* est le chef, le commandant en mooré. *Wend* est le dieu suprême mossi. Le guerrier Naaba-Wend ne se soumet jamais à l'échec — il revient toujours plus fort après la défaite.

**Quand :** Après avoir rattrapé 10 échecs au QCM (score < 80 %) en retournant aux flashcards et en réussissant ensuite.

**Comment :** Chaque fois qu'un QCM est échoué puis réussi après révision, cela compte comme 1 point de résilience. Accumuler 10 remontadas.

**Récompense :** Badge résilience rouge animé + animation spéciale à chaque victoire

---

#### 📜 Sankore-Kalan — *Le Scribe de Tombouctou*
**Langue :** Songhaï (Niger / Mali) | **XP :** +300

**Signification culturelle :** La mosquée Sankore de Tombouctou abritait la plus grande université d'Afrique médiévale. *Kalan* signifie "apprendre" en songhaï. Partager ses flashcards, c'est perpétuer l'esprit des manuscrits.

**Quand :** Après avoir partagé au total 20 sets de flashcards (via Bluetooth ou bibliothèque publique).

**Comment :** Partager les flashcards avec des camarades via Bluetooth (mode hors ligne) ou les publier dans la bibliothèque publique (mode en ligne). Chaque set partagé compte.

**Récompense :** Titre Scribe affiché + cadre de profil doré + badge animé parchemin

---

#### 🌺 Pughsiuré — *La Princesse Yennenga*
**Langue :** Mooré (Burkina Faso) | **XP :** +320

**Signification culturelle :** *Pughsiuré* signifie "la jeune fille courageuse" en mooré — c'est l'essence de Yennenga, princesse mossi et mère fondatrice du Burkina Faso. Aider ses camarades, c'est son héritage vivant.

**Quand :** Après avoir aidé directement 5 camarades via le partage de flashcards Bluetooth.

**Comment :** Activer le Bluetooth, trouver un camarade proche et lui envoyer un set de flashcards complet. L'envoi Bluetooth confirmé par le destinataire compte comme 1 aide. Répéter 5 fois.

**Récompense :** Badge mentor violet + accès à la section tutorat pair à pair

---

### Niveau 5 — Ancestral (3 badges)

> *Le sommet absolu. Ces badges distinguent les élèves d'exception — ceux qui ont tout accompli.*

---

#### 🏺 Amadou-Bâ — *L'Ancêtre du Savoir*
**Langue :** Peul / Fula (Guinée / Sénégal) | **XP :** +500

**Signification culturelle :** Amadou Hampâté Bâ, grand sage peul, a dit : "En Afrique, quand un vieillard meurt, c'est une bibliothèque qui brûle." Ce badge honore ceux qui ont tout appris pour ne rien laisser s'éteindre.

**Quand :** Après avoir obtenu tous les badges des niveaux 1 à 4.

**Comment :** Compléter chacun des 14 badges précédents sans exception. L'application indique en temps réel combien il en reste. Ce badge ne peut pas être raccourci.

**Récompense :** Titre légendaire personnalisé + profil complet débloqué + Easter Egg secret

---

#### 🌟 Étoile Faso — *L'Étoile du Pays*
**Langue :** Dioula (Burkina Faso) | **XP :** +600

**Signification culturelle :** *Faso* signifie la patrie, le pays des pères en dioula. L'étoile du Burkina Faso brille pour les plus intègres. Ce badge récompense ceux qui dominent le classement collectif.

**Quand :** Après avoir occupé la 1re place du classement local pendant 30 jours cumulés.

**Comment :** Accumuler des points XP par les révisions et les partages. Chaque jour en tête du classement de l'école ou de la zone compte. Les 30 jours n'ont pas besoin d'être consécutifs.

**Récompense :** Badge national animé + mention spéciale dans l'application

---

#### ✨ Imana-Intore — *L'Esprit des Élites*
**Langue :** Kinyarwanda (Rwanda) | **XP :** +999

**Signification culturelle :** *Imana* est Dieu en kinyarwanda, *Intore* sont les danseurs d'élite guerriers du Rwanda — les meilleurs parmi les meilleurs, choisis par le roi. Ce badge n'est pas pour tout le monde.

**Quand :** Après 365 jours actifs dans l'application (consécutifs ou cumulés sur 2 ans maximum).

**Comment :** Rester actif sur l'application pendant 365 jours au total. Chaque jour où une flashcard est générée ou révisée est comptabilisé. Un compteur caché est visible dans le profil.

**Récompense :** Badge ultime animé doré + effet de particules + accès à un Easter Egg secret exclusif

---

## SYSTÈME 2 — Badges par Catégorie (24 badges)

Les badges par catégorie récompensent la **spécialisation** dans une matière académique. Chaque catégorie contient **6 badges** répartis en **3 niveaux de progression** : Découvreur, Érudit et Maître.

> Un élève peut être "Maître en Sciences" et "Découvreur en Littérature" simultanément. Les badges de catégorie s'accumulent indépendamment des badges évolutifs.

---

### Catégorie 📚 Littérature
*Matières couvertes : Français · Lecture · Expression écrite · Poésie · Conte africain*
*Palette de couleurs : Parchement doré · Brun manuscrit · Crème*

---

#### 🪶 Soro-Foli — *La Plume Légère* | Découvreur | +15 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** En bambara, *soro* évoque la voix douce du conteur, *foli* la plume qui trace les premiers mots. Premier pas dans le monde des mots écrits.

**Quand :** Dès la génération de la 1re flashcard en Français ou Littérature.

**Comment :** Créer un set de flashcards à partir d'un cours de français, d'un texte littéraire ou d'un extrait de lecture. La catégorie est détectée automatiquement.

**Récompense :** Badge découverte Littérature + accès aux flashcards de textes littéraires

---

#### 📖 Kuma-Jeli — *Le Récitant* | Découvreur | +25 XP
**Langue :** Mandingue (Guinée)

**Signification culturelle :** *Kuma* signifie la parole sacrée en mandingue, *jeli* est le griot récitant. Celui qui lit à voix haute perpétue la tradition orale africaine par l'écrit.

**Quand :** Après avoir complété 3 sessions de révision en Littérature.

**Comment :** Générer des flashcards depuis 3 cours ou textes différents de français/littérature et réviser chacun jusqu'au bout.

**Récompense :** Accès aux flashcards audio des textes littéraires

---

#### 🌿 Xibara — *Le Sage des Mots* | Érudit | +60 XP
**Langue :** Wolof (Sénégal)

**Signification culturelle :** En wolof, *xibara* est celui qui sait choisir ses mots avec sagesse — l'élève qui maîtrise l'art de s'exprimer et de comprendre les textes complexes.

**Quand :** Après avoir réussi 5 QCM de Littérature avec un score ≥ 80 %.

**Comment :** Passer et réussir les évaluations après révision des flashcards de français et littérature. Les 5 réussites peuvent venir de textes différents.

**Récompense :** Titre "Sage des Mots" + accès aux textes classiques africains préchargés

---

#### ✍️ Waxtan — *L'Auteur* | Érudit | +80 XP
**Langue :** Wolof (Sénégal)

**Signification culturelle :** *Waxtan* en wolof désigne l'acte d'écrire avec intention et beauté. L'élève qui partage ses flashcards littéraires devient lui-même un auteur de savoir.

**Quand :** Après avoir partagé 5 sets de flashcards de Littérature avec des camarades.

**Comment :** Via Bluetooth ou bibliothèque publique, partager les sets de flashcards classés en catégorie Littérature. Chaque partage confirmé compte.

**Récompense :** Badge auteur + cadre de profil doré littéraire

---

#### 📜 Donso-Kuma — *Le Gardien des Récits* | Maître | +140 XP
**Langue :** Dioula (Burkina Faso)

**Signification culturelle :** *Donso* est le chasseur dépositaire des récits sacrés en dioula. Le maître en littérature garde vivants les mots des anciens et les transmet aux générations futures.

**Quand :** Après avoir complété 10 modules complets de Littérature (révision + QCM ≥ 80 %).

**Comment :** Accumuler 10 cycles complets dans la catégorie Littérature. Varier les sous-matières : textes, grammaire, expression écrite, poésie.

**Récompense :** Titre "Gardien des Récits" + fond de profil manuscrit

---

#### 🦜 Fɔlikan — *Le Maître Conteur* | Maître | +180 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** Le *fɔlikan* bambara est l'oiseau-messager qui sait toutes les histoires. Le maître conteur connaît chaque texte, chaque figure de style, chaque récit de la tradition.

**Quand :** Obtenir le titre de 1er en Littérature dans le classement local.

**Comment :** Accumuler le plus de points XP dans la catégorie Littérature parmi ses camarades. Le classement est mis à jour en temps réel en mode connecté.

**Récompense :** Badge légendaire Littérature + titre "Maître Conteur" affiché

---

### Catégorie 🔬 Sciences
*Matières couvertes : Mathématiques · Physique-Chimie · SVT · Informatique*
*Palette de couleurs : Vert forêt · Ocre botanique · Vert clair*

---

#### 🌱 Kalan-So — *L'Apprenti Chercheur* | Découvreur | +15 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** *Kalan-So* en bambara est "la maison de l'apprentissage des sciences". Comme les botanistes africains qui classifiaient les plantes médicinales, l'apprenti chercheur commence par observer.

**Quand :** Dès la génération de la 1re flashcard en Mathématiques, Physique-Chimie, SVT ou Informatique.

**Comment :** Créer un set de flashcards depuis un cours scientifique. La catégorie Science est détectée automatiquement par l'IA.

**Récompense :** Badge découverte Sciences + accès aux formules préchargées

---

#### ⚗️ Sɛnɛ-Wolo — *L'Alchimiste du Savoir* | Découvreur | +25 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** *Sɛnɛ* est la terre fertile, *wolo* la naissance. Les alchimistes africains de l'Antiquité ont fondé la chimie moderne. L'élève qui maîtrise les réactions comprend le monde.

**Quand :** Après avoir complété 3 sessions de révision en Sciences.

**Comment :** Générer et réviser des flashcards de 3 cours scientifiques différents (ex : Maths + SVT + Physique).

**Récompense :** Mode "formules rapides" débloqué dans les flashcards

---

#### 🔢 Ɲɛtaa — *Le Calculateur* | Érudit | +70 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** *Ɲɛtaa* signifie "il a compté, il a résolu" en bambara. Les mathématiciens africains de l'Empire du Mali calculaient l'astronomie et l'architecture des mosquées avec précision.

**Quand :** Après avoir réussi 5 QCM de Sciences avec un score ≥ 80 %.

**Comment :** S'évaluer sur 5 sets scientifiques différents et obtenir au moins 80 % à chaque fois. Les QCM de Maths et Physique comptent double.

**Récompense :** Titre "Calculateur" + accès aux exercices de niveau avancé

---

#### 🌿 Nafama — *Le Botaniste* | Érudit | +90 XP
**Langue :** Dioula (Burkina Faso)

**Signification culturelle :** *Nafama* en dioula désigne celui qui connaît les plantes et leur vie secrète. La tradition des guérisseurs africains est la première biologie — SVT enracinée dans la sagesse ancestrale.

**Quand :** Après avoir partagé 5 sets de flashcards scientifiques avec des camarades.

**Comment :** Partager les flashcards de SVT, Biologie ou Sciences naturelles. La générosité du savoir scientifique est une tradition africaine.

**Récompense :** Badge botaniste + accès aux planches SVT préchargées

---

#### ⭐ Tɔn-Kɛla — *L'Astronome* | Maître | +150 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** *Tɔn-Kɛla* est "celui qui observe les étoiles" en bambara. Les Dogons du Mali connaissaient l'étoile Sirius B avant les télescopes modernes — preuve d'une science africaine millénaire.

**Quand :** Après avoir complété 10 modules complets de Sciences.

**Comment :** Accumuler 10 cycles complets (révision + QCM ≥ 80 %) dans n'importe quelle sous-matière scientifique.

**Récompense :** Titre "Astronome" + fond de profil étoilé africain

---

#### 🧬 Fɛn-Dɔn — *Le Maître des Sciences* | Maître | +200 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** *Fɛn-Dɔn* est "celui qui sait toutes choses de la nature" — le grand scientifique. Il a traversé toutes les disciplines comme les grands savants africains qui étaient à la fois médecins, mathématiciens et astronomes.

**Quand :** Obtenir le titre de 1er en Sciences dans le classement local.

**Comment :** Accumuler le maximum de points XP dans la catégorie Sciences. Combiner Maths, SVT et Physique pour un score optimal.

**Récompense :** Badge légendaire Sciences + titre "Maître des Sciences"

---

### Catégorie 🗣️ Langues
*Matières couvertes : Anglais · Arabe · Mooré · Dioula · Fulfuldé · Autres langues africaines*
*Palette de couleurs : Violet royal · Or ancien · Lilas*

---

#### 👄 Kan-Taa — *Le Bouche-à-Oreille* | Découvreur | +15 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** *Kan-Taa* signifie littéralement "la bouche parle" en bambara. La première langue s'apprend par imitation et écoute — comme les griots transmettent le savoir de bouche à oreille.

**Quand :** Dès la génération de la 1re flashcard en Anglais, Arabe ou dans une langue nationale (Mooré, Dioula, Fulfuldé).

**Comment :** Créer un set de flashcards de vocabulaire ou de grammaire dans une langue étrangère ou nationale. L'IA détecte automatiquement la catégorie Langues.

**Récompense :** Badge découverte Langues + accès aux flashcards de vocabulaire préchargées

---

#### 🌐 Jàmbaar — *Le Polyglotte Courageux* | Découvreur | +30 XP
**Langue :** Wolof (Sénégal)

**Signification culturelle :** *Jàmbaar* est le héros courageux en wolof. Apprendre une nouvelle langue, c'est un acte de courage — s'aventurer dans un territoire inconnu de sons et de signes.

**Quand :** Après avoir créé des flashcards dans 2 langues différentes.

**Comment :** Générer au moins un set en Anglais ET un set dans une langue nationale (ou Arabe). Les deux catégories doivent être distinctes.

**Récompense :** Icône polyglotte sur le profil + badge animé

---

#### 📡 Kumakan — *Le Transmetteur* | Érudit | +70 XP
**Langue :** Bambara (Mali)

**Signification culturelle :** *Kumakan* en bambara est "la voix qui porte loin". Les grandes langues africaines ont traversé des milliers de kilomètres. L'élève érudit en langues devient un pont entre les cultures.

**Quand :** Après avoir réussi 5 QCM de Langues avec un score ≥ 80 %.

**Comment :** Passer et réussir des évaluations de vocabulaire, grammaire ou compréhension dans des langues différentes — au moins 3 langues distinctes parmi les 5 réussites.

**Récompense :** Titre "Transmetteur" + badge traducteur activé

---

#### 🎙️ Grema — *Le Maître de la Parole* | Érudit | +90 XP
**Langue :** Fulfuldé (Burkina Faso)

**Signification culturelle :** Le *Grema* en fulfuldé est le maître de cérémonie, celui dont la parole a du poids et de l'autorité. Maîtriser les langues, c'est maîtriser le pouvoir de communiquer.

**Quand :** Après avoir partagé 5 sets de flashcards de Langues avec des camarades.

**Comment :** Partager les sets de vocabulaire, conjugaison ou grammaire dans n'importe quelle langue. Le partage en langue nationale (Mooré / Dioula / Fulfuldé) compte double.

**Récompense :** Badge "Grema" + accès aux sets de conversation préchargés

---

#### 🕌 Alfa-Kalan — *Le Savant Bilingue* | Maître | +160 XP
**Langue :** Dioula (Burkina Faso)

**Signification culturelle :** *Alfa* est le savant en arabe-dioula, *kalan* signifie l'apprentissage. Les savants de Tombouctou maîtrisaient l'arabe, le bambara et le fulfuldé — le bilinguisme était une norme d'excellence.

**Quand :** Après avoir complété 10 modules complets de Langues.

**Comment :** Accumuler 10 cycles révision + QCM ≥ 80 % dans la catégorie Langues. La diversité des langues travaillées est valorisée dans le classement.

**Récompense :** Titre "Savant Bilingue" + fond de profil calligraphique

---

#### 🦋 Faran-Kan — *L'Ambassadeur des Langues* | Maître | +210 XP
**Langue :** Songhaï (Mali / Niger)

**Signification culturelle :** *Faran* est la transformation, *kan* est la langue en songhaï. Comme le papillon qui change de forme, l'ambassadeur des langues passe d'une culture à l'autre avec fluidité et grâce.

**Quand :** Obtenir le titre de 1er en Langues dans le classement local.

**Comment :** Dominer le classement de la catégorie Langues. Travailler toutes les langues disponibles pour maximiser les points XP dans cette catégorie.

**Récompense :** Badge légendaire Langues + titre "Ambassadeur" affiché

---

### Catégorie 🌍 Humanités
*Matières couvertes : Histoire-Géographie · Philosophie · Économie · Éducation civique · EMC*
*Palette de couleurs : Terracotta · Sable du Sahel · Pêche*

---

#### 🗺️ Taama — *L'Explorateur du Monde* | Découvreur | +15 XP
**Langue :** Mooré (Burkina Faso)

**Signification culturelle :** *Taama* signifie "le voyage" en mooré. L'histoire et la géographie sont les deux jambes du voyageur qui comprend où il vit et d'où il vient. Premier pas vers la connaissance du monde.

**Quand :** Dès la génération de la 1re flashcard en Histoire-Géographie, Philosophie, Économie ou Éducation civique.

**Comment :** Créer un set de flashcards depuis un cours d'humanités. L'IA classe automatiquement dans la catégorie Humanités.

**Récompense :** Badge découverte Humanités + accès aux cartes africaines préchargées

---

#### ⚖️ Laafɩ — *Le Juste* | Découvreur | +30 XP
**Langue :** Mooré (Burkina Faso)

**Signification culturelle :** *Laafɩ* désigne la paix et la justice en mooré. La philosophie et l'éducation civique enseignent à vivre ensemble — valeur fondamentale des sociétés africaines régies par le droit coutumier.

**Quand :** Après avoir complété 3 sessions de révision en Humanités.

**Comment :** Générer et réviser des flashcards de 3 cours différents en histoire, philosophie ou éducation civique.

**Récompense :** Accès aux flashcards de citations philosophiques africaines

---

#### 🏛️ Naan-Yiri — *Le Gardien de l'Histoire* | Érudit | +75 XP
**Langue :** Mooré (Burkina Faso)

**Signification culturelle :** *Naan-Yiri* en mooré est "la maison de la mémoire" — là où sont conservées les traditions orales des Mossi. L'historien africain est d'abord un gardien de mémoire vivante.

**Quand :** Après avoir réussi 5 QCM d'Humanités avec un score ≥ 80 %.

**Comment :** Passer et réussir des évaluations en histoire, géo, philosophie ou économie. Mixer les sous-matières pour couvrir tout le domaine.

**Récompense :** Titre "Gardien de l'Histoire" + accès aux chronologies africaines

---

#### 🧭 Yiri-Wɛnd — *Le Géographe* | Érudit | +90 XP
**Langue :** Mooré (Burkina Faso)

**Signification culturelle :** *Yiri-Wɛnd* en mooré est "celui que Dieu guide dans sa direction". Le géographe connaît les chemins du monde — comme les explorateurs africains qui cartographiaient l'Afrique avant les Européens.

**Quand :** Après avoir partagé 5 sets de flashcards d'Humanités avec des camarades.

**Comment :** Partager les flashcards d'histoire, de géographie ou de philosophie. Chaque partage contribue à la mémoire collective, comme un griot partage ses récits.

**Récompense :** Badge géographe + fond de profil cartographique africain

---

#### 🦉 Bɩŋ-Wɩɩga — *Le Philosophe* | Maître | +160 XP
**Langue :** Mooré (Burkina Faso)

**Signification culturelle :** *Bɩŋ-Wɩɩga* signifie "la sagesse profonde" en mooré. Ubuntu, la philosophie africaine de l'humanité partagée, est la plus grande pensée philosophique du continent. Le philosophe voit au-delà de l'immédiat.

**Quand :** Après avoir complété 10 modules complets d'Humanités.

**Comment :** Accumuler 10 cycles complets dans la catégorie Humanités. Couvrir au moins 3 sous-matières différentes (histoire + géo + philosophie idéalement).

**Récompense :** Titre "Philosophe" + fond Ubuntu affiché sur le profil

---

#### 🌅 Fɔ-Pãn — *Le Maître de la Pensée* | Maître | +220 XP
**Langue :** Mooré (Burkina Faso)

**Signification culturelle :** *Fɔ-Pãn* en mooré signifie "celui dont la parole illumine l'aube". Le maître de la pensée est celui dont les connaissances en humanités guident les autres — le sage de la communauté scolaire.

**Quand :** Obtenir le titre de 1er en Humanités dans le classement local.

**Comment :** Dominer le classement de la catégorie Humanités. L'histoire-géo et la philosophie sont les matières avec le plus de poids dans cette catégorie.

**Récompense :** Badge légendaire Humanités + titre "Maître de la Pensée"

---

## Tableau récapitulatif des 41 badges

### Badges Évolutifs — 17 badges

| Badge | Nom local | Français | Langue | Niveau | XP |
|---|---|---|---|---|---|
| 🌱 | Baaré | La Graine | Mooré | Éveil | 10 |
| 🐣 | Akosua | L'Éclose | Twi | Éveil | 20 |
| 🌊 | Joliba | L'Enfant du Fleuve | Bambara | Éveil | 30 |
| 🦅 | Horus-Abara | L'Aigle en Vol | Amharique | Exploration | 50 |
| 🥁 | Djeliba | L'Apprenti Griot | Mandingue | Exploration | 60 |
| 🐊 | Baoré | Le Gardien Sacré | Dioula | Exploration | 70 |
| 🌍 | Diallo-Fara | Le Voyageur du Savoir | Fulfuldé | Exploration | 80 |
| 👑 | Niani-Dô | L'Héritier du Trône | Soninké | Maîtrise | 120 |
| 🦁 | Simba-Kali | Le Lion Courageux | Swahili | Maîtrise | 150 |
| 🎭 | Do-Fing | Le Masque Sacré | Bwamu | Maîtrise | 180 |
| 🌙 | Nyambura | La Gardienne de la Nuit | Kikuyu | Maîtrise | 160 |
| 🐘 | Nzou-Mukuru | L'Éléphant Ancien | Shona | Légende | 250 |
| ⚔️ | Naaba-Wend | Le Guerrier Résilient | Mooré | Légende | 280 |
| 📜 | Sankore-Kalan | Le Scribe de Tombouctou | Songhaï | Légende | 300 |
| 🌺 | Pughsiuré | La Princesse Yennenga | Mooré | Légende | 320 |
| 🏺 | Amadou-Bâ | L'Ancêtre du Savoir | Peul | Ancestral | 500 |
| 🌟 | Étoile Faso | L'Étoile du Pays | Dioula | Ancestral | 600 |
| ✨ | Imana-Intore | L'Esprit des Élites | Kinyarwanda | Ancestral | 999 |

**XP total maximum (évolutifs) : 3 979 XP**

---

### Badges par Catégorie — 24 badges

| Badge | Nom local | Français | Catégorie | Niveau | XP |
|---|---|---|---|---|---|
| 🪶 | Soro-Foli | La Plume Légère | Littérature | Découvreur | 15 |
| 📖 | Kuma-Jeli | Le Récitant | Littérature | Découvreur | 25 |
| 🌿 | Xibara | Le Sage des Mots | Littérature | Érudit | 60 |
| ✍️ | Waxtan | L'Auteur | Littérature | Érudit | 80 |
| 📜 | Donso-Kuma | Le Gardien des Récits | Littérature | Maître | 140 |
| 🦜 | Fɔlikan | Le Maître Conteur | Littérature | Maître | 180 |
| 🌱 | Kalan-So | L'Apprenti Chercheur | Sciences | Découvreur | 15 |
| ⚗️ | Sɛnɛ-Wolo | L'Alchimiste du Savoir | Sciences | Découvreur | 25 |
| 🔢 | Ɲɛtaa | Le Calculateur | Sciences | Érudit | 70 |
| 🌿 | Nafama | Le Botaniste | Sciences | Érudit | 90 |
| ⭐ | Tɔn-Kɛla | L'Astronome | Sciences | Maître | 150 |
| 🧬 | Fɛn-Dɔn | Le Maître des Sciences | Sciences | Maître | 200 |
| 👄 | Kan-Taa | Le Bouche-à-Oreille | Langues | Découvreur | 15 |
| 🌐 | Jàmbaar | Le Polyglotte Courageux | Langues | Découvreur | 30 |
| 📡 | Kumakan | Le Transmetteur | Langues | Érudit | 70 |
| 🎙️ | Grema | Le Maître de la Parole | Langues | Érudit | 90 |
| 🕌 | Alfa-Kalan | Le Savant Bilingue | Langues | Maître | 160 |
| 🦋 | Faran-Kan | L'Ambassadeur des Langues | Langues | Maître | 210 |
| 🗺️ | Taama | L'Explorateur du Monde | Humanités | Découvreur | 15 |
| ⚖️ | Laafɩ | Le Juste | Humanités | Découvreur | 30 |
| 🏛️ | Naan-Yiri | Le Gardien de l'Histoire | Humanités | Érudit | 75 |
| 🧭 | Yiri-Wɛnd | Le Géographe | Humanités | Érudit | 90 |
| 🦉 | Bɩŋ-Wɩɩga | Le Philosophe | Humanités | Maître | 160 |
| 🌅 | Fɔ-Pãn | Le Maître de la Pensée | Humanités | Maître | 220 |

**XP total maximum (catégories) : 1 985 XP**

---

## XP Total et progression globale

| Système | Nombre de badges | XP maximum |
|---|---|---|
| Badges Évolutifs | 17 | 3 979 XP |
| Badges Catégorie Littérature | 6 | 500 XP |
| Badges Catégorie Sciences | 6 | 550 XP |
| Badges Catégorie Langues | 6 | 575 XP |
| Badges Catégorie Humanités | 6 | 590 XP |
| **TOTAL** | **41 badges** | **6 194 XP** |

---

## Langues africaines utilisées dans les badges

| Langue | Pays / Région | Nombre de badges |
|---|---|---|
| Mooré | Burkina Faso | 7 |
| Bambara | Mali | 7 |
| Dioula | Burkina Faso / Côte d'Ivoire | 3 |
| Wolof | Sénégal | 3 |
| Songhaï | Mali / Niger | 2 |
| Fulfuldé / Peul | Burkina Faso / Afrique de l'Ouest | 2 |
| Mandingue | Guinée / Sénégal | 2 |
| Swahili | Afrique de l'Est | 1 |
| Twi | Ghana | 1 |
| Amharique | Éthiopie | 1 |
| Soninké | Mali / Mauritanie | 1 |
| Bwamu | Burkina Faso | 1 |
| Kikuyu | Kenya | 1 |
| Shona | Zimbabwe | 1 |
| Kinyarwanda | Rwanda | 1 |
| **Total** | **15 langues africaines** | **41 badges** |

---

*Document de référence — Système de gamification*
*Version 1.0 — Tous droits réservés*
