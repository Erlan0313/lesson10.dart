//import 'dart:io';

import 'dart:io';

void main(List<String> args) {
  // print('Введите ваше имя:');
  // String name = stdin.readLineSync()!;
  // print('name = $name');

  // // print('Введите ваше имя22:');
  // stdout.write('Введите ваше имя22: ');
  // String name2 = stdin.readLineSync()!;
  // print('name2 = $name2');

  // print('Введите ваш возраст:');
  // int age = int.parse(stdin.readLineSync()!);
  // print('age = $age');

// 1) Создайте и заполните массив. Выведите первый и последний элемент
// списка.
  List<dynamic> array = ['Erlan', 4, true, 456, 'Attokurov', 'ITC'];
  print([array.first, array.last]);

  List array = [];
  stdout.write("Введите количества элементов в массиве: ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    stdout.write('Введите $i элемент массива: ');
    String element = stdin.readLineSync()!;
    array.add(element);
  }
  print('Your array: $array');
  print('Первый и последний элемент массива: ${[array.first, array.last]}');

// 2) Дано трехзначное число. Найдите произведение их цифр.
  stdout.write('Введите трехзначное число: ');
  int number = int.parse(stdin.readLineSync()!);
  if (number >= 100 && number <= 999) {
    int a = number ~/ 100;
    int b = (number % 100) ~/ 10;
    int c = number % 10;
    int sum = a * b * c;
     print(sum);
  } else {
    print('Ошибка! Введите трехзначное число');
  }

// 3) Дано трехзначное число. Замените среднюю цифру на ноль.

  stdout.write('Введите Трехзначаное чисдо: ');
  int number = int.parse(stdin.readLineSync()!);
  if (number >= 100 && number <= 999) {
    List<int> digits = number.toString().split('').map(int.parse).toList();
    if (digits.length == 3) {
      digits[1] = 0;
      int newNumber = int.parse(digits.join());
      print('Исходное число: $number');
      print('Число после замены: $newNumber');
    }
  } else {
    print('Введите трехзначное число.');
  }

// 4) Дан номер дня недели. Выведите название дня недели. Решение через if и
// switch case.
  stdout.write('Введите номер дня недели: ');
  int n = int.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
      print('Понидельник');
      break;
    case 2:
      print('Вторник');
      break;
    case 3:
      print('Среда');
      break;
    case 4:
      print('Четверг');
      break;
    case 5:
      print('Пятница');
      break;
    case 6:
      print('Суббота');
      break;
    case 7:
      print('Воскресенье');
      break;
    default:
      print('Ошибка!');
  }
// 5) Вывести на экран 8 раз фразу "Loading...". Используйте цикл for
  stdout.write('Сколько раз вы хотите вывести на экран: ');
  int num = int.parse(stdin.readLineSync()!);
  if (num is int) {
    for (var i = 0; i < num; i++) {
    print('Loading...');
  }
  }
  else{
    print('Введите число!');
  }

// 6) Даны три числа. Если сумма двух из них равна третьему, то выведите
// такое равенство, если нет, то выведите произведение всех чисел.
  stdout.write('Введите Трехзначаное чисдо a: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Введите Трехзначаное чисдо b: ');
  int b = int.parse(stdin.readLineSync()!);
  stdout.write('Введите Трехзначаное чисдо c: ');
  int c = int.parse(stdin.readLineSync()!);
  if (a + b == c) {
    print('a+b=${a + b} c= $c');
  } else {
    print('a * b * c = ${a * b * c}');
  }
// 7) Анкета. С помощью stdin sdout реализуйте программу, которая
// запрашивает у пользователя имя, возраст, адрес, хобби.
// В конечном итоге вывести на экран информацию о пользователе:
// Вас зовут: XXX
// Ваш возраст: XXX
// Ваш адрес: XXX
// Ваше хобби: XXX
  String myName = 'Erlan';
  int myAge = 20;
  String myhobbi = 'Sleep';
  String myAdres = 'Aitmatova66a';

  stdout.write('Как вас зовут?: ');
  String name = stdin.readLineSync()!;
  stdout.write('Введите ваш возраст: ');
  int age = int.parse(stdin.readLineSync()!);
  stdout.write('Введите ваш адрес: ');
  String adresS = stdin.readLineSync()!;
  stdout.write('Какой у вас хоббби: ');
  String hobbi = stdin.readLineSync()!;

  if (myAdres == adresS || myAge == age || name == myName || hobbi == myhobbi) {
    print('Давай дружить😊');
  } else {
    if (myAdres == adresS) {
      print('Мы соседи');
    }
    if (myAge == age) {
      print('Мы ровесники');
    }
    if (name == myName) {
      print('У нас одинковые имена');
    }
    if (hobbi == myhobbi) {
      print('У нас одинаковое хобби');
    } else {
      print('Вас зовут: $name');
      print('Ваш возраст: $age');
      print('Ваш адрес: $adresS');
      print('Ваше хобби: $hobbi');
    }
  }
// 8) Поставить проверку к предыдущему заданию.
// Создайте переменные myName myAge и.т.д
// Если ваши имена совпали - вывести на экран «У нас одинаковое имя»
// Если ваш возраст совпал - вывести на экран «Мы ровесники»
// Если ваш адрес совпал - вывести на экран «Мы соседи»
// Если ваше хобби совпало - вывести на экран «У нас одинаковое хобби»
// Если совпали все поля - вывести на экран «Давай дружить»


// 9) В диапазоне чисел от 1 до 100 найти среднее арифметическое чисел.

stdout.write('Введите число: ');
int rang = int.parse(stdin.readLineSync()!);
int sum=0;
int j=0;
for (var i = 1; i <= rang; i++) {
  sum+=i;
  j=j+1;
}
print(sum/j);

// // 10) При заданном целом числе n посчитайте n + nn + nnn.
  stdout.write('Введите число: ');
  int chislo = int.parse(stdin.readLineSync()!);
  int nn = chislo * 11; 
  int nnn = chislo * 111; 
  int result = chislo + nn + nnn;
  print('Результат: $result');


// 11) Дан возраст. Если возраст до 7, вывести "Вам в садик". Если возраст с 7
// до 18, вывести "Вам в школу". Если возраст с 19 до 23, вывести "Вам в
// универ".Если возраст с 23 до 60, вывести "Вам на работу". Если возраст с 60
// до 100, вывести "Вы пенсионер". В противном случае вывести
// "Неправильный возраст".
stdout.write('Введите возраст ');
int age = int.parse(stdin.readLineSync()!);
if (age>0) {
  if(age>0 && age<7){
    print('Вам в садик');
  }
  else if(age>7 && age<18){
    print('Вам в школу');
  }
  else if(age>18 && age<=23){
    print('Вам в универ');
  }
  else if(age>23 && age<=60){
    print('Вам на работу');
  }
}
else{
  print('Введите правильный возраст');
}


// 12) Дано шестизначное число, если сумма первых чисел равна сумме вторых
// трех чисел, вывести true, а иначе вывести false.

  stdout.write('Введите шестизначное число: ');
  int num = int.parse(stdin.readLineSync()!);
  String number = num.toString();
  int a = 0;
  int b = 0;
  if (number.length == 6) {
    for (int i = 0; i < 3; i++) {
      a += int.parse(number[i]);
    }
    for (int i = 3; i < 6; i++) {
      b += int.parse(number[i]);
    }
    if (a == b) {
      
      print('true');
    } else {
      print('false');
    }
  } else {
    print('Vvedite 6 znachnoe chislo');
  }
  
// 13) Организовать беспрерывный ввод чисел с клавиатуры, пока
// пользователь не введёт 0. После ввода нуля, показать на экран количество
// чисел, которые были введены, их общую сумму и среднее арифметическое.
// Подсказка: необходимо объявить переменную-счетчик, которая будет считать
// количество введенных чисел, и переменную, которая будет накапливать
// общую сумму чисел.
// Обработать возможные ошибки.

int schet = 0;
int sum = 0;
stdout.write('Введите число 0: ');
int chislo = int.parse(stdin.readLineSync()!);
while(chislo != 0){
  schet += 1;
  sum += chislo;
  stdout.write('Введите число 0: ');
  chislo = int.parse(stdin.readLineSync()!);
}
print('Количества введенных чисел: $schet');
print('Сумма введенных чисел: $sum');
}
