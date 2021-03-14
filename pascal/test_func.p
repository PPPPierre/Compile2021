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
    print b;
}

func fac(i) {
    if (i>=1){
        return i * fac(i-1);
    } else {
        return 1;
    }
}

print PGCD(12, 8);
print fac(6);
