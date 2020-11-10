import 'package:flutterappnews5/models/post.dart';
import 'package:flutterappnews5/utilites/api_utilities.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsAPI {
  Future<List<Post>> featchWhatsNew() async {
    List<Post> posts = List<Post>();

    String whatsNewApi = base_api + whats_new_api;

    var response = await http.get(whatsNewApi);

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData['data'];
      for (var item in data) {
        Post post = Post(
          id: item['id'].toString(),
          title: item['title'].toString(),
          content: item['content'].toString(),
          dateWritten: item['date_written'].toString(),
          featureImage: item['feature_image'].toString(),
          votesUp: item['votes_up'],
          votesDown: item['votes_down'],
          votersUp: (item['voters_up'] == null)
              ? List<int>()
              : jsonDecode(item['voters_up']),
          votersDown: (item['voters_down'] == null)
              ? List<int>()
              : jsonDecode(item['voters_down']),
          userId: item['user_id'],
          categoryId: item['category_id'],
        );
        posts.add(post);
      }
    }
    return posts;
  }
}
