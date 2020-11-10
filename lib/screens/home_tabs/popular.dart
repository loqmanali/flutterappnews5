import 'package:flutter/material.dart';
import 'package:flutterappnews5/api/posts_api.dart';
import 'package:flutterappnews5/models/post.dart';
import 'package:flutterappnews5/utilites/data_utilites.dart';
import 'package:http/http.dart' as http;

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  PostsAPI postsAPI = PostsAPI();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: postsAPI.featchPostsByCategoryId('3'),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return connectionError();
            break;
          case ConnectionState.waiting:
            return loding();
            break;
          case ConnectionState.active:
            return loding();
            break;
          case ConnectionState.done:
            if (snapshot.hasError) {
              return error(snapshot.error);
            } else {
              List<Post> posts = snapshot.data;
              return ListView.builder(
                  itemBuilder: (context, position) {
                    return Card(
                      child: _drawSingleRow(posts[position]),
                    );
                  },
                  itemCount: posts.length);
            }
            break;
        }
      },
    );
  }

  Widget _drawSingleRow(Post post) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            child: Image(
              image: NetworkImage(post.featureImage),
              fit: BoxFit.cover,
            ),
            width: 125,
            height: 125,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Text(
                  post.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Micheal Adams',
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        Icon(Icons.timer),
                        Text(parseHumanDateTime(post.dateWritten)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
