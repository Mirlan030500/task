import 'dart:io';

void main() {
  //task1();
  //task2();
  task3();
}

task1() {
  try {
    stdout.write('Введите первое число: ');
    double number1 = double.parse(stdin.readLineSync()!);
    stdout.write('Введите второе число: ');
    double number2 = double.parse(stdin.readLineSync()!);

    if (number1 == null || number2 == null) {
      print('Введите корректные числа');
      return;
    } else if (number1 == 0 || number2 == 0) {
      print('Деление на ноль невозможно');
      return;
    } else {
      int result = (number1 / number2) as int;
      print('Результат деление $number1 на $number2 = $result');
    }
  } catch (e) {
    print('error');
  }
}

task2() {
  stdout.write('Введите минуты: ');
  int minute = int.parse(stdin.readLineSync()!);

  if (minute == null || minute == 0) {
    print('Ввели не корректное число');
    return;
  }

  int hours = minute ~/ 60;
  int minutes = minute % 60;

  print('Время: $hours : $minutes ');
}

task3() {
  stdout.write('Введите свой возраст: ');
  int age = int.parse(stdin.readLineSync()!);

  if (age == null) {
    print('Вы ввели строку');
    return;
  } else {
    print('Ваш возраст: $age');
  }
}