proc swap(*a){
    int temp;
    temp = a[0];
    a[0] = a[1];
    a[1] = temp;
}

int a[10];
a[0] = 1;
a[1] = 2;
print a[0];
print a[1];
//print a[2];

call swap(a);
print a[0];
print a[1];