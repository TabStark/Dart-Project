import 'dart:io';
import 'dart:math';

num input() {
  print("Enter The Number:");
  num inputNumber = num.parse(stdin.readLineSync()!);
  return inputNumber;
}

String inputOperand() {
  print("Enter Operad");
  String operand = stdin.readLineSync()!;
  return operand;
}

void main() {
  calcualtion();
}

num calcualtion() {
  num num1 = input();
  String operations = inputOperand();
  num num2 = input();
  num result = 0;

  switch (operations) {
    case "+":
      result = (num1 + num2);
      print("${num1} ${operations} ${num2} = ${result}");
      pressAnyKeyToContinue();
      break;

    case "-":
      result = (num1 - num2);
      print("${num1} ${operations} ${num2} = ${result}");
      pressAnyKeyToContinue();
      break;

    case "*":
      result = (num1 * num2);
      print("${num1} ${operations} ${num2} = ${result}");
      pressAnyKeyToContinue();
      break;

    case "/":
      result = (num1 / num2);
      print("${num1} ${operations} ${num2} = ${result}");
      pressAnyKeyToContinue();
      break;

    default:
      print("Invalid input");
      pressAnyKeyToContinue();
  }
  return result;
}

void pressAnyKeyToContinue() {
  print('Press Enter to continue...');
  stdin.readLineSync();

  main();
}
