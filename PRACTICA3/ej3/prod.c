#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#include "arqo3.h"

void compute(tipo **m1, tipo **m2, tipo **res, int n);

int main( int argc, char *argv[]) {
	int n, i, j;
	tipo **m1=NULL, **m2=NULL, **res=NULL;
	struct timeval fin,ini;

	printf("Word size: %ld bits\n",8*sizeof(tipo));

	if( argc!=2 ) {
		printf("Error: ./%s <matrix size>\n", argv[0]);
		return -1;
	}
	n=atoi(argv[1]);
	m1=generateMatrix(n);
	m2=generateMatrix(n);
	res=generateEmptyMatrix(n);
	if( !m1 || !m2 || !res ) {
		return -1;
	}


	
	gettimeofday(&ini,NULL);

	/* Main computation */
	compute(m1, m2, res, n);
	/* End of computation */

	gettimeofday(&fin,NULL);
	printf("Execution time: %f\n", ((fin.tv_sec*1000000+fin.tv_usec)-(ini.tv_sec*1000000+ini.tv_usec))*1.0/1000000.0);
	printf("Product:\n");
	for (i=0; i<n; i++) {
		for (j=0; j<n; j++) {
			printf("%lf ", res[i][j]);
		}
		printf("\n");
	}

	


	freeMatrix(m1);
	freeMatrix(m2);
	freeMatrix(res);
	return 0;
}


void compute(tipo **m1, tipo **m2, tipo **res, int n) {
	int i,j,k;
	
	for (i=0; i<n; i++) {
		for (j=0; j<n; j++) {
			res[i][j] = 0;
			for (k=0; k<n; k++) {
				res[i][j] += m1[i][k] * m2[k][j];
			}
		}
	}
}
