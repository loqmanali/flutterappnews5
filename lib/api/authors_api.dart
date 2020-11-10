import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutterappnews5/models/author.dart';
import 'package:flutterappnews5/utilites/api_utilities.dart';

class AuthorsAPI {
  Future<List<Author>> fetchAllAuthors() async {
    List<Author> authors = List<Author>();
    String allAuthorsApi = base_api + all_authors_api;
    var response = await http.get(allAuthorsApi);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData['date'];
      print(data);

      for (var item in data) {
        Author author = Author(
          item['id'].toString(),
          item['name'].toString(),
          item['email'].toString(),
          item['avater'].toString(),
        );
        authors.add(author);
      }
    }
    return authors;
  }
}
