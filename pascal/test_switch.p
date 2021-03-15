func switchTest(i){
    switch (i) {
        case 1 {
            return -1;
        }
        case 2 {
            return -2;
        } 
        case 3{
            return -3;
        }
    }
    return 0;
}

print switchTest(1);
print switchTest(2);
print switchTest(3);
print switchTest(5);