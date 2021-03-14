/*
Bonjour professeurs, merci beaucoup de nous donner ce cours enrichi-
ssant et intéressant. J'en ai profité beaucoup et pratiqué beaucoup.
Ce ficher est un petit exemple de la langage Mini-Pascal sur laquelle 
l'on pratique dans le TP2.
C'est très intéressant ! 
*/

// Algorithme d'Euclide pour le calcul du PGCD
func PGCD(i,j) {
    int a;
    int b;
    int c;
    if (i>j){
        a = i;
        b = j;
    }else{
        a = j;
        b = i;
    }
    c = a % b;
    while (c != 0){
        a = b;
        b = c;
        c = a % b;
    }
    return b;
}

// Fonction récursive pour le calcul de la factorielle.
func fac(i) {
    if (i>=1){
        return i * fac(i-1);
    } else {
        return 1;
    }
}

// Algorithme du crible d'Ératosthène pour trouver les nombres premiers
proc cribleErato(){
    int map[100];
    int i = 0;
    int j = 0;
    while (i < 100){
        map[i] = 1;
        i = i + 1;
    }
    map[0] = 0;
    i = 0;
    while (i < 10){
        j = (i + 1) * (i + 1) - 1;
        if (map[i] == 1){
            while (j < 100){
                map[j] = 0;
                j = j + i + 1;
            }
        } 
        i = i + 1;
    }
    i = 0;
    while (i < 100){
        if (map[i] == 1){
            print i + 1;
        }
        i = i + 1;
    }
}

print PGCD(120, 192);
print fac(6);
call cribleErato();

// if_elif_else test
func ifElifElseTest(i){
    if (i < 0){
        return 0;
    } elif (i > 5){
        return 1;
    } else{
        return 2;
    }
}
print ifElifElseTest(-2);
print ifElifElseTest(3);
print ifElifElseTest(20);