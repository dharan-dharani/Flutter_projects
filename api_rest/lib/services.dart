
import 'dart:convert';
import 'package:api_rest/users.dart';
import 'package:http/http.dart' as http;
class Api
{

  static Future<List<User>> fetchuser() async {
    final response = await http.get(
        Uri.parse('https://randomuser.me/api/?results=100'));
    final body = response.body;
    final json = jsonDecode(body);
    final result = json['results'] as List<dynamic>;
    final transform = result.map((e) {
      return User(
        email: e['email'],
        phone: e['phone'],
        gender: e['gender'],
      );
    }).toList();
    return transform;
  }}
