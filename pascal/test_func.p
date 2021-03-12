proc abc() {
    print 4;
}
print 3;
call abc();
print 5;

func one() {
    print 0;
    return 1;
}

print one();