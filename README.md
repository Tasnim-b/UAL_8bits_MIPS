
# 🖥️ ULA 8 Bits - Architecture MIPS avec Quartus

Ce projet implémente une Unité Logique et Arithmétique (ULA) de 8 bits en utilisant l'architecture MIPS sur Quartus II. L'ULA est capable d'effectuer plusieurs opérations arithmétiques et logiques en fonction d'un signal de commande.

## 📌 Caractéristiques principales
- Architecture : Inspirée de MIPS

- Largeur de données : 8 bits

- Opérations supportées :
    - Addition  
    - Soustraction  
    - ET logique (AND)  
    - OU logique (OR)  
    - XOR logique (XOR)  
    - Décalage à gauche (SLL)  
    - Décalage à droite (SRL)  
    - Comparaison (SLT)  
- Utilisation de portes logiques et de multiplexeurs
## ⚙️ Fichiers du projet
Le projet est structuré en plusieurs étapes modulaires :

- risc.bdf : Implémentation d'une UAL élémentaire à 1 bit.

- risc8.bdf : UAL de 8 bits obtenue par duplication de l'UAL élémentaire.

- memoireROM.bdf : Implémentation de la mémoire ROM.

- memoireRAM.bdf : Implémentation de la mémoire RAM.

- bancDeRegistre.vhd : Banc de registre.

- risc.qpf : Fichier du projet Quartus.

- risc.qsf : Fichier de configuration Quartus.

## 🛠️ Outils et Technologies

- Logiciel : Quartus II

- Langage : VHDL

- FPGA ciblé : Cyclone III (ou autre compatible)

- Instructions d'utilisation
## 🚀 Instructions d'utilisation

1️⃣ Ouvrir le projet dans Quartus II et charger les fichiers du projet.

2️⃣ Compiler le projet .

3️⃣ Simuler le fonctionnement . Visualisez les résultats et ajustez si nécessaire.
