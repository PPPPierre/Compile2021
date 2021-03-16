proc swap(*x, *y){
    int * temp;
    * temp = * x;
    * x = * y;
    * y = * temp;
}

int a = 1;
int b = 2;
int * p;
p = &a;
print a;
print p;
print *p;
p = &b;
print b;
print p;
print *p;

int * x;
int * y;
*x = 2;
*y = 3;
print *x;
print *y;
call proc(*x, *y);
print *x;
print *y