#include <stdio.h>
#include <string.h>

int isOperator(char c) {
	int i;
    char operators[] = "+-*/%=";
    for ( i = 0; i < strlen(operators); i++) {
        if (c == operators[i]) {
            return 1; 
        }
    }
    return 0; 
}

int main() {
	int i,j=1;
    char input[100];
    printf("Enter a string: ");
    fgets(input, sizeof(input), stdin);

    printf(" valid Operators in the input string: ");
    for ( i = 0; i < strlen(input); i++) {
        if (isOperator(input[i])) {
        	printf("operator %d is :", j);
            printf("%c \n", input[i]);
            j++;
        }
    }

    printf("\n");
    return 0;
}