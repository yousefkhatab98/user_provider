import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import '../models/user.dart';
import 'dart:convert';

class Service {
  Future<List<User>> getData() async {
    var url = 'https://jsonplaceholder.typicode.com/users';
    var response = await http.get(url);
    var responseBody = json.decode(response.body);
    var users =
        List<User>.of((responseBody as List).map((e) => User.fromJson(e)));
    return users;
  }
}
