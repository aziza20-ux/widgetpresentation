import 'dart:math';

int randomNumber() {
  var random = Random();
  int value = random.nextInt(6) + 1;
  return value;
}
