import 'package:flutterappnews5/models/category.dart';
import 'package:flutterappnews5/utilites/api_utilities.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CategoriesAPI {
  Future<List<Category>> fetchCategories() async {
    List<Category> categories = List<Category>();
    String categoriesUrl = base_api + all_categories_api;

    var response = await http.get(categoriesUrl);

    if (response.statusCode == 200) {
      var jsonDate = jsonDecode(response.body);
      var data = jsonDate['data'];
      for (var item in data) {
        Category category =
            Category(item['id'].toString(), item['title'].toString());
        categories.add(category);
      }
    }
    return categories;
  }
}
