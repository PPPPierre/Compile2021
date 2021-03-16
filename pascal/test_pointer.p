proc swap(*x, *y){
    print x;
    print *x;
    print y;
    print *y;
    int * temp;
    * temp = * x;
    * x = * y;
    * y = * temp;
}
/*
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
*/
int * x;
int * y;
*x = 2;
*y = 3;
print x;
print *x;
print y;
print *y;
call swap(x, y);
print x;
print *x;
print y;
print *y;