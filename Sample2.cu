//Test Case 1: (variable initialization) [2 Marks]
int a = 20;
char * c = "A";




//Test Case 2: (variable names) [2 Marks]
int new_variable = 20;
int new1 = 20;

//Test Case 2a: (Fail cases) [1 Marks]
int 1a = 20;

//Test Case 2b: (Fail cases) [1 Marks]
int 10 = 10;





//Test Case 3: (Function Call) [2 Marks]
int a = 2;
int b = 5;
max_number(a, b);



//Test Case 4: (Function with arguments and compounding statements) [3 Marks]
int newfunction(int j, int k, int l){
  int j = 14;
  int k = 15;
  int l = 16;
  int result5;
  if (j == k) { return j;}
  else { return k;}
}

//Test Case 4a: (Fail) (Function with arguments and compounding statements) [1 Marks]
int newfunction(int j = 14, int k = 15, l = 16)
{
  int result5;
  if (j > k) { return j}
  else { return k }
}

Test Case 4b: (Operators) [2 Marks]
int compute_quotient(int a) {
int dividend;
int divisor;
int quotient;
int remainder;

    /*Computes quotient*/
    quotient = dividend / divisor;

    /* Computes remainder*/
    remainder = dividend - divisor;

}



Test Case 5: (Precedence) [2 Marks]
int a = 20;
int b = 10;
int c = 15;
int d = 5;
int e = a + b * c / d;     

Test Case 5a: (Fail) [2 Marks]
int a = 20;
int b = 10;
int c = 15;
int d = 5;
int e = a + b * c /;     





Test Case 6: [2 Marks]
int i=10;
while (i != 0){
  i = 1 - 1
}



Test Case 7: (Complete) [2 Marks]
int main() {
    int a;
    int b;
    int c;
    int discriminant;
    int root1;
    int root2;
    int realPart;
    int imagPart;
    discriminant = b * b - 4 * a * c;
    /* condition for real and different roots*/
    if (discriminant != 0) {
        root1 = (b + discriminant) / (2 * a);
        root2 = (b - discriminant) / (2 * a);
         }

    /* condition for real and equal roots*/
    else if (discriminant == 0) {
        root1 = root2 = b / (2 * a);
          }

    /* if roots are not real*/ 
    else {
        realPart = b / (2 * a);
        imagPart = discriminant / (2 * a) 
    }
}



Test Case 8: Error Handling [3 Marks]