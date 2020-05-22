
#include <stdio.h>

int main(void)
{
    int i;
    int fibs[20] = {1, 1};
    for ( i = 2; i < 20; i++)
    {
        fibs[i] = fibs[i-2] + fibs[i-1];
    }
    for ( i = 0; i < 20; i++)
    {
        if(i % 5 == 0)
        {
            printf("\n");
        }
        printf("%-12d", fibs[i]);
    }
    
    return 0;
}