func PGCD(i,j) {
    var a;
    var b;
    var c;
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

func fac(i) {
    if (i>=1){
        return i * fac(i-1);
    } else {
        return 1;
    }
}

proc cribleErato(){
    var map[100];
    var i = 0;
    var j = 0;
    while (i < 100){
        map[i] = 1;
        i = i + 1;
    }
    map[0] = 0;
    i = 0;
    while (i < 10){
        print i;
        j = (i + 1) * (i + 1) - 1;
        if (map[i] == 1){
            while (j < 100){
                map[j] = 0;
                j = j + i;
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