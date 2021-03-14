global i;
i = 4;

proc abc() {
    print i;
}
call abc();

var i = 1;
print i;

func one(i) {
    return i + 1;
}
print one(2);
print i;
call abc();