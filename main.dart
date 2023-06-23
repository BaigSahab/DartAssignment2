void main() {
  // Q.1: Create a list of names and print all names using list.

  List<String> names = ['Sufyan', 'Salman', 'Hamza', 'Azlan', 'Jahangeer'];

  for (String name in names) {
    print(name);
  }

  // Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days
  List<String> days = [];

  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');

  for (String day in days) {
    print(day);
  }

  // Q.3: Create a list of Days and remove one by one from the end of list.

  List<String> weekDays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  while (weekDays.isNotEmpty) {
    String removedDay = weekDays.removeLast();
    print('Removed day: $removedDay');
  }

  // Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List<int> numbers = [15, 8, 21, 5, 11, 3, 17];

  int smallest = numbers[0];
  int greatest = numbers[0];

  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }

    if (number > greatest) {
      greatest = number;
    }
  }

  print('Smallest number: $smallest');
  print('Greatest number: $greatest');

  // Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

  Map<String, String> contacts = {
    'Alice': '1234567890',
    'Bob': '9876543210',
    'Charlie': '5678901234',
    'Dave': '0123456789',
    'Eve': '5432109876'
  };

  Iterable<String> keysWithLengthFour =
      contacts.keys.where((key) => key.length == 4);

  print('Keys with length 4: $keysWithLengthFour');

  // Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.

  Map<String, Map<String, dynamic>> world = {
    'USA': {
      'capitalCity': 'Washington D.C.',
      'currency': 'US Dollar',
      'language': 'English',
    },
    'Germany': {
      'capitalCity': 'Berlin',
      'currency': 'Euro',
      'language': 'German',
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Japanese Yen',
      'language': 'Japanese',
    },
  };

  String countryKey = 'Germany'; // Example country key

  if (world.containsKey(countryKey)) {
    Map<String, dynamic> countryInfo = world[countryKey]!;
    String capitalCity = countryInfo['capitalCity'] as String;
    String currency = countryInfo['currency'] as String;

    print('Country: $countryKey');
    print('Capital City: $capitalCity');
    print('Currency: $currency');
  } else {
    print('Country not found.');
  }

  // Q.7:
  //   Map<String, double> expenses = {
  //     'sun': 3000.0,
  //     'mon': 3000.0,
  //     'tue': 3234.0,
  //   };

  //   Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  String key = 'fri';
  double newValue = 5000.0;

  if (expenses.containsKey(key)) {
    expenses[key] = newValue;
  } else {
    expenses[key] = newValue;
  }

  print('Expenses: $expenses');

  // Q.8: remove all false values from below list by using removeWhere or retainWhere property.

  //   List<Map<String, bool>> usersEligibility = [
  //   {'name': 'John', 'eligible': true},
  //   {'name': 'Alice', 'eligible': false},
  //   {'name': 'Mike', 'eligible': true},
  //   {'name': 'Sarah', 'eligible': true},
  //   {'name': 'Tom', 'eligible': false},
  //   ];

  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility.removeWhere((user) => user['eligible'] == false);

  print('Updated List: $usersEligibility');

  // Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.

  List<int> integars = [5, 9, 2, 14, 7, 3, 11];

  int maximum =
      integars.reduce((value, element) => value > element ? value : element);

  print('Maximum value: $maximum');

  // Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.

  List<String> strings = [
    'apple',
    'orange',
    'banana',
    'apple',
    'grape',
    'banana',
    'kiwi'
  ];

  List<String> uniqueStrings = [];

  for (var string in strings) {
    if (!uniqueStrings.contains(string)) {
      uniqueStrings.add(string);
    }
  }

  print('Original List: $strings');
  print('List without duplicates: $uniqueStrings');

  // Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.

  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int n = 4;

  List<int> newList = originalList.take(n).toList();

  print('Original List: $originalList');
  print('New List (First $n elements): $newList');

  // Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.

  List<String> secondOriginalList = [
    'apple',
    'orange',
    'banana',
    'grape',
    'kiwi'
  ];

  List<String> reversedList = List.from(secondOriginalList.reversed);

  print('Original List: $secondOriginalList');
  print('Reversed List: $reversedList');

  // Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.

  List<int> thirdOriginalList = [1, 2, 3, 4, 2, 3, 5, 1, 6, 7, 6];

  List<int> uniqueList = thirdOriginalList.toSet().toList();

  print('Original List: $thirdOriginalList');
  print('Unique List: $uniqueList');

  // Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.

  List<int> fourthOriginalList = [5, 2, 8, 1, 9, 3, 7, 4, 6];

  List<int> sortedList = List.from(fourthOriginalList);
  sortedList.sort();

  print('Original List: $fourthOriginalList');
  print('Sorted List (Ascending Order): $sortedList');

  // Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  List<int> fifthOriginalList = [-2, 5, -9, 3, -1, 0, 7, -4, 6];

  List<int> positiveNumbers =
      fifthOriginalList.where((number) => number >= 0).toList();

  print('Original List: $fifthOriginalList');
  print('Positive Numbers: $positiveNumbers');

  // Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.

  List<int> sixthOriginalList = [2, 5, 8, 3, 9, 6, 7, 4, 1];

  List<int> evenNumbers =
      sixthOriginalList.where((number) => number % 2 == 0).toList();

  print('Original List: $sixthOriginalList');
  print('Even Numbers: $evenNumbers');

  // Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.

  List<int> seventhOriginalList = [2, 4, 6, 8, 10];

  List<int> squaredList =
      seventhOriginalList.map((number) => number * number).toList();

  print('Original List: $seventhOriginalList');
  print('Squared List: $squaredList');

  // Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".

  Map<String, dynamic> person = {
    'name': 'John',
    'age': 25,
    'isStudent': true,
  };

  bool isStudent = person['isStudent'];
  int age = person['age'];

  if (isStudent && age > 18) {
    print('Eligible');
  } else {
    print('Not eligible');
  }

  // Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".

  Map<String, dynamic> product = {
    'name': 'Example Product',
    'price': 9.99,
    'quantity': 0,
  };

  int quantity = product['quantity'];

  if (quantity > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }

  // Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  bool isSedan = car['isSedan'];
  String color = car['color'];

  if (isSedan && color == 'Red') {
    print('Match');
  } else {
    print('No match');
  }

  // Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin"

  Map<String, dynamic> user = {
    'name': 'John Doe',
    'isAdmin': true,
    'isActive': true,
  };

  bool isAdmin = user['isAdmin'];
  bool isActive = user['isActive'];

  if (isAdmin && isActive) {
    print('Active admin');
  } else {
    print('Not an active admin');
  }

  // Q.22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".

  Map<String, int> shoppingCart = {
    'Banana': 2,
    'Orange': 3,
    'Apple': 1,
    'Mango': 4,
  };

  if (shoppingCart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }
}
