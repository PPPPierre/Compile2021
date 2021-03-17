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
print p;
print a;
print *p;

*p = 3;
print *p;
print a;

p = &b;
print p;
print *p;
print b;

int * x;
int * y;
*x = 2;
*y = 3;
print *x;
print *y;
call swap(x, y);
print *x;
print *y;