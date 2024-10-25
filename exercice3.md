1. ```cut -d: -f1 /etc/passwd```
2. ```chmod 744 myfile```
3. Une variable d'environnement est accessible pour toute la session du terminal et se définie par ```export MY_VAR=my_value``` 
Elle peut être rendue persistante en l'ajoutant dans ~/bashrc     
Une varibale locale n'est accessible que dans une session shell ou script
4. la structure controle if permet de tester une condition
```bash
meteo="Pluie"
if [ $meteo != "Soleil" ]; then
   echo "Il ne fait pas beau"
fi
```
5.
```bash
echo 'Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :'
echo "Bonjour est-ce que ce clavier fonctionne bien ?"
echo "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"
echo "Même des tildes ~ ?"
echo "Evidemment !"
```
6. 
```bash
jobs -l | grep "gedit"
```
7. Un switch opère sur la couche 2, un routeur opère sur la couche 3
8.
```
    cp <=> Copy-Item
    cd <=> cd ou Set-Location
    mkdir <=> New-Item
    ls <=> dir
```
9. La trame qui contient les données à transmettre
10. Pour dépasser les limiations de classe et être plus flexible
