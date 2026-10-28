// The parameter expects a function that takes two ints and returns an int
void calculate(int a, int b, int Function(int, int) operation) {
  int result = operation(a, b);
  print('Result: $result');
}

void main() {
  int brake;
  print(brake);

  // Passing a single-line lambda using arrow syntax
  calculate(5, 3, (x, y) => x + y);

  // Passing a multi-line lambda using curly braces
  calculate(10, 2, (x, y) {
    print('Dividing numbers...');
    return x ~/ y;
  });
}