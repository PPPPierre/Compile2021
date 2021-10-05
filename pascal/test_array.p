proc swap(*a){
    int temp;
    temp = a[0];
    a[0] = a[1];
    a[1] = temp;
}

int a[2];
a[0] = 1;
a[1] = 2;
print a[0];
print a[1];

call swap(a);
print a[0];
print a[1];

/*
Output should be:
1
2
2
1
*/