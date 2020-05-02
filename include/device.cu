#include<stdio.h>

bool check_gpu(void)
{
    int count;
    cudaGetDeviceCount(&count);
    printf("device:%d\n", count);
    if(count < 1)
    {
        return false;
    }
    else
    {
        return true;
    }
}
