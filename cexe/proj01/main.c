#include <stdio.h>
#include <math.h>

int main(void)
{
    int count(int);
    int ii;
    for(ii = 0; ii < 10 ; ii++)
    {
        printf("%d\n", count(10));
    }
    return 0;
}

int count(int n)
{
    static int i = 0;
    i++;
    return i + sqrt(n);
}
