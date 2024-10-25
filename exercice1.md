### Exercice 1 - Gestion du stockage

connecté en root

#### 1. Création des partitions
Créer une partion de 6 Go et une partition avec le reste
```
cfdisk /dev/sdb
```
![image1](https://raw.githubusercontent.com/FreddyCornil/checkpoint1/refs/heads/main/exc1_1.png)

#### 3. Formatage des partitions
```
mkfs.ext4 -L DATA /dev/sdb1
mkswapp -L SWAP /dev/sdb2
```
#### 3. Créer le point de montage et monter la partition ext4
```
mkdir /mnt/data
mount /dev/sdb1 /mnt/data
```
#### 3. Désactiver l'ancien swap et activer le nouveau
```
swapoff /dev/sda5
swapon /dev/sdb2
```
![image2](https://raw.githubusercontent.com/FreddyCornil/checkpoint1/refs/heads/main/exc1_22.png)

#### 4. Enregistrer la config dans le fstabcfdisk
Commenter la ligne de l'ancien swapp sda5

Ajouter les lignes 
```
UUID=<UUID> /mnt/sdb1 ext4 defaults 0 2
UUID=<UUID> none swap sw 0 0
```
![image3](https://raw.githubusercontent.com/FreddyCornil/checkpoint1/refs/heads/main/exc1_33.png)

