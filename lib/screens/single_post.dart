import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterappnews5/models/post.dart';

class SinglePost extends StatefulWidget {
  final Post post;
  SinglePost(this.post);
  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.post.featureImage),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, position) {
                if (position == 0) {
                  return _drawPostDetails();
                } else if (position >= 1 && position < 24) {
                  return _comments();
                } else {
                  return _commentTextEntry();
                }
              },
              childCount: 25,
            ),
          ),
        ],
      ),
    );
  }

  Color getRandomColor({int minBrightness = 50}) {
    final random = Random();
    assert(minBrightness >= 0 && minBrightness <= 255);
    return Color.fromARGB(
      0xFF,
      minBrightness + random.nextInt(255 - minBrightness),
      minBrightness + random.nextInt(255 - minBrightness),
      minBrightness + random.nextInt(255 - minBrightness),
    );
  }

  Widget _drawPostDetails() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        widget.post.content,
        style: TextStyle(
          fontSize: 18,
          letterSpacing: 1.2,
          height: 1.25,
        ),
      ),
    );
  }

  Widget _comments() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: ExactAssetImage('assets/placeholder_bg.png'),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('loqman'),
                  Text('1 hour'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Text('datadatadatadatadatadatadatadatadatadatadatadatadatadatadata'),
        ],
      ),
    );
  }

  Widget _commentTextEntry() {
    return Container(
      color: Color.fromRGBO(241, 245, 247, 1),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write Comment here',
                    contentPadding:
                        EdgeInsets.only(left: 16, top: 24, bottom: 28),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'SEND',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
