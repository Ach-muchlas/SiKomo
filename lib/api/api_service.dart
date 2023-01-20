import 'dart:convert';
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import '../material_assets/model/sikomo.dart';

List<Sikomo> parsePost(String responseBody) {
  var list = jsonDecode(responseBody) as List<dynamic>;
  var posts = list.map((e) => Sikomo.fromJson(e)).toList();
  return posts;
}

Future<List<Sikomo>> fetchData() async {
  final response =
      await http.get(Uri.parse('http://192.168.218.183/SIKOMO/read.php'));
  if (response.statusCode == 200) {
    return compute(parsePost, response.body);
  } else {
    throw Exception('Fetch data eror');
  }
}
