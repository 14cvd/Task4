import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  showSelected();
  int check = int.tryParse(stdin.readLineSync().toString())!;

  switch (check) {
    case 0:
      print("Görüşənədək :)");
      break;
    case 1:
      loadingMethods();
      easyPassword();
      break;
    case 2:
      loadingMethods();
      middlePassword();
      break;
    case 3:
      loadingMethods();
      strongPassword();
      break;
    default:
      print("Xəta baş verdi ");
  }
}

void loadingMethods() {
  for (int i = 0; i < 150; i++) {
    sleep(Duration(milliseconds: 150));
    print("-" * i);
  }
}

void showSelected() {
  print("\n*************************************");
  print("*                                   *");
  stdout.writeln("*  Zehmet olmasa secim edin :       *");

  stdout.writeln("*  1 asand şifrə təyin edir         *");
  stdout.writeln("*  2 normal şifrə təyin edir        *");
  stdout.writeln("*  3 çətin  şifrə təyin edir        *");
  stdout.writeln("*  çıxış üçün 0 qeyd edin           *");

  print("*                                   *");
  print("*                                   *");
  print("*                                   *");
  print("*                                   *");
  print("*                                   *");
  print("*************************************\n");
}

void easyPassword() {
  List easyPass = [];

  for (int i = 0; i < 16; i++) {
    int randomEasyValue = Random().nextInt(10);
    easyPass.add(randomEasyValue);
  }
  String easy = easyPass.join("");
  print("Sizin şifrəniz " + easy);
}

void middlePassword() {
  List middlePass = [];
  for (int i = 0; i < 8; i++) {
    int randomMiddleValue = Random().nextInt(10);
    middlePass.add(randomSmybols());
    middlePass.add(randomMiddleValue);
  }
  String middle = middlePass.join("");
  print("Sizin şifrəniz  " + middle);
}

void strongPassword() {
  List strongPass = [];

  for (int i = 0; i < 8; i++) {
    int randomStrongValue = Random().nextInt(20);
    strongPass.add(randomStrongValue);
    strongPass.add(randomSmybols());
  }

  strongPass.shuffle();

  String strong = strongPass.join("");

  print("Sizin şifrəniz " + strong);
}

String randomSmybols() {
  int symbol = Random().nextInt(10);
  switch (symbol) {
    case 1:
      return "!";

    case 2:
      return "@";

    case 3:
      return "#";

    case 4:
      return "+";

    case 5:
      return "%";

    case 6:
      return "^";

    case 7:
      return "&";
    case 8:
      return "*";
    case 9:
      return "-";

    case 10:
      return "'";
    default:
      return "±";
  }
}
