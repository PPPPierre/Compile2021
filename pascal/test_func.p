global i;
i = 4;

proc abc() {
    print i;
}
call abc();

var i = 1;
print i;

func fac(i) {
    if (i>=1){
        return i * fac(i-1);
    } else {
        return 1;
    }
}
print one(6);
