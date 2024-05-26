#include <iostream>
#include <algorithm>
#include <ctime>
using namespace std;

bool cmp(int *p,int *q)
{
    if(p[0]==q[0])
    {
        if(p[1]==q[1])
        {
            return p[2]<q[2];
        }
        else return p[1]<q[1];
    }
    else return p[0]<q[0];
}
int main()
{
    srand(time(0));
    int i;
    int **a=new int*[1000];
    for(i=0;i<1000;++i)
    {
        a[i]=new int[3];
        a[i][0]=rand()%1000;
        a[i][1]=rand()%1000;
        a[i][2]=rand()%1000;
        //printf("%d\t%d\t%d\n",a[i][0],a[i][1],a[i][2]);
    }
    sort(a,a+1000,cmp);
   cout<<"After sort"<<endl;
    for(i=0;i<1000;++i)
    {
        printf("%d\t%d\t%d\n",a[i][0],a[i][1],a[i][2]);
    }
    return 0;
}
