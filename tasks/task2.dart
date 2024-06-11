import 'dart:convert';

import '../domain/user.dart';

void main() {
  String json2 = """
{
  "username": "kristinward",
  "sex": "F",
  "address": "122 Powell Trace Suite 016, Lloydport, SC 08075",
  "name": "Katherine Gill",
  "email": "jestrada@gmail.com",
  "birthday": "1958-04-05",
  "location": {
    "city": "Lloydport",
    "state": "South Carolina",
    "country": "United States",
    "postcode": "08075"
  }
}
""";
  // Erstelle eine Instanz der Klasse User basierend auf dem JSON-String json2

  Map<String, dynamic> m2 = jsonDecode(json2);

  User user2 = User(
      gender: m2['sex'],
      fullName: (m2['name'] + m2['name']),
      city: m2['location']['city']);
  //print(m2);
  print('Gender: ${user2.gender}');
  print('City: ${user2.city}');
  print('Fullname: ${user2.fullName}');
}
