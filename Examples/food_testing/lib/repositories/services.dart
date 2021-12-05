import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_testing/model/user_model.dart';

class Services {
  String url = 'https://randomuser.me/api/?results=500';
  String url1 = 'https://randomuser.me/api/';

  Future<User> getUserData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final user = jsonDecode(utf8.decode(response.bodyBytes));
      User json = User.fromJson(user) ;
      return json;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<User> getUserDetails(String usernames) async {
    final response = await http.get(Uri.parse('$url1?username=$usernames'));
    if (response.statusCode == 200) {
      final user = jsonDecode(utf8.decode(response.bodyBytes));
      User json = User.fromJson(user) ;
      return json;
    } else {
      throw Exception('Failed to load album');
    }
  }
}

class ApiResponse<T> {
  T data;
  final bool isSuccess;
  final String message;

  ApiResponse({required this.data, this.isSuccess = true, this.message = ""});
}
