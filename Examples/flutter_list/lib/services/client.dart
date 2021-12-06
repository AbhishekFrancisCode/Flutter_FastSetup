import 'dart:convert';

import 'package:flutter_list/model/model.dart';
import 'package:http/http.dart' as http;

var randomPersonURL = Uri.parse('https://randomuser.me/api/?results=50');

class PersonNetworkService {
  Future<List<Person>> fetchPersons(int amount) async {
    http.Response response = await http.get(randomPersonURL);

    if (response.statusCode == 200) {
      Map peopleData = jsonDecode(response.body);
      List<dynamic> peoples = peopleData["results"];
      return peoples.map((json) => Person.fromJson(json)).toList();
    } else {
      throw Exception("Something gone wrong, ${response.statusCode}");
    }
  }
}