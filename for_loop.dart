import 'dart:io';

void main() {
  String? email;
  String? password;

  List<Map<String,String>>studentRecord=[
    {"email": "admain@gmail.com", "password": "1234"},
    {"email": "admain1@gmail.com", "password": "12345"},
    {"email": "admain2@gmail.com", "password": "123456"},
    {"email": "admain3@gmail.com", "password": "1234567"},
  ];
  stdout.write("admain@gmail.com: ");
  email = stdin.readLineSync();

  stdout.write("1234:");
  password = stdin.readLineSync();

  bool islogin = false;

    for (var record in studentRecord) {
      if (record["email"] == email && record["password"] == password) {
        islogin = true;
        break;
      }
    }
  

  if (islogin) {
    print("Login successful");
  } else {
    print("Invalid email or password.");
  }
}
