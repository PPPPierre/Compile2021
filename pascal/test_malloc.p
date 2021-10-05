int b;
print &b;

b << INPUT;

int * c = malloc(b);
print &c;

int i = 0;
print &i;
while (i < 6){
    c[i] = i;
    i = i + 1;
}

i = 0;
while (i < 6){
    print c[i];
    i = i + 1;
}

/*
Output should be:
1
input: 6
2
3
0
1
2
3
4
5
*/