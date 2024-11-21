// Page 40, 3 Setting Constant Values

#include <stdio.h>

int main()
{
  const float PI = 3.141693;

  float diameter;
  float radius;
  float circ;
  float area;

  printf("Enter the diameter of a circle in millimeters: ");
  scanf("%f", &diameter);
  /* Remember that the & operator must precede the variable name
  in scanf() to assign input to the variable. */

  circ = PI * diameter;
  radius = diameter / 2;
  area = PI * (radius * radius);

  printf("\n\tCircumference is %.2f mm", circ);
  printf("\n\tArea is %.2f sq.mm", area);
  printf("\n\tRadius is %.2f mm", radius);

  return 0;
}