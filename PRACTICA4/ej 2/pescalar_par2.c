// ----------- Arqo P4-----------------------
// pescalar_par2
//
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include "arqo4.h"

int main(int argc, char const *argv[])
{
	float *A=NULL, *B=NULL;
	long long k=0, size;
	struct timeval fin,ini;
	float sum=0;
	int threads;
	
	if( argc!=3 ) {
		printf("Error: %s <vector size> <number of threads(1-4)>\n", argv[0]);
		return -1;
	}
	size=atoll(argv[1]);
	threads=atoi(argv[2]);
	if ( threads < 1 || threads > 4 ) {
		printf("Error: threads must be an integer between 1 and 4\n");
		return -1;
	}

	A = generateVector(size);
	B = generateVector(size);
	if ( !A || !B )
	{
		printf("Error when allocationg vector\n");
		freeVector(A);
		freeVector(B);
		return -1;
	}
	
	omp_set_num_threads(threads);

	gettimeofday(&ini,NULL);
	/* Bloque de computo */
	sum = 0;
	#pragma omp parallel for reduction(+:sum)
	for(k=0;k<size;k++)
	{
		sum = sum + A[k]*B[k];
	}
	/* Fin del computo */
	gettimeofday(&fin,NULL);

	printf("Resultado: %f\n",sum);
	printf("Tiempo: %f\n", ((fin.tv_sec*1000000+fin.tv_usec)-(ini.tv_sec*1000000+ini.tv_usec))*1.0/1000000.0);
	freeVector(A);
	freeVector(B);

	return 0;
}
