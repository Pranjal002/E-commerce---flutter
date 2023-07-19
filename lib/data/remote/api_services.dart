import 'dart:convert';

import '../../Domain/model/clothes_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  List<ClothesModel> clothes = [];

  Future<List<ClothesModel>> getApi() async {
    try {
      final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
      var data = jsonDecode(response.body.toString());

      if (response.statusCode == 200) {
        for (Map i in data) {
          clothes.add(ClothesModel.fromJson(i));
        }
        return clothes;
      } else {
        print("Error response code: ${response.statusCode}");
        throw Exception('Request failed for ${response.statusCode}');
      }
    } catch (e, stacktrace) {
      print('Exception occurred: $e\n$stacktrace');
      throw Exception('Error in data');
    }
  }
}
