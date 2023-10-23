import 'dart:io';

void main() {
  List tracker = [];

  List<num> amount = [];
  num initsum = 0;

  String a;
  List<num> initcridit = [];
  num cal = 0;

  print("-----Budget Tracker-----");

  do {
    // TO get Initial Amount from USer
    print("What's to pay inital Amount?if yes click Y or click N");
    String initCondition = stdin.readLineSync()!;
    if (initCondition == "Y") {
      print("Enter Amount:");
      num iamount = num.parse(stdin.readLineSync()!);
      initcridit.add(iamount);
    }

    // Add Item
    print("To add item click Y else click N");
    a = stdin.readLineSync()!;
    if (a == "Y") {
      print("Enter Item Name:");
      String item = stdin.readLineSync()!;
      print("Enter Cost:");
      num price = num.parse(stdin.readLineSync()!);
      amount.add(price);
      tracker.add("${item}:${price}");
    }
  } while (a != "N");

  // Print Item
  print("-----Budget Tracker-----");
  tracker.forEach((element) {
    print(element);
  });

  // Print Price
  amount.forEach((ajay) {
    initsum += ajay;
  });

  initcridit.forEach((vijay) {
    cal += vijay;
  });

  num resultAmount = cal - initsum;
  print("Balance Amount ${resultAmount}");
}

// budgetTracker() {
  // var map = Map();
  // print("Enter Item:");
  // String item = stdin.readLineSync()!;
  // print("Enter Cost:");
  // num price = num.parse(stdin.readLineSync()!);
  // map[item] = price;
  // map.forEach((key, value) {
  //   print("$key: $value");
  // });
 
  // tracker.forEach((element) {
  //   print(element);
  // });
//   main();
// }
