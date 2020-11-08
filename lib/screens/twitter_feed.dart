import 'package:flutter/material.dart';
import 'package:flutterappnews5/shared_ui/navigation_drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Twitter Feeds'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        drawer: NavigationDrawer(),
        body: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Card(
                child: Column(
                  children: [
                    _cardHeader(),
                    _cardBody(),
                    _drawLine(),
                    _cardFooter(),
                  ],
                ),
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }

  Widget _cardHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/placeholder_bg.png'),
            radius: 25,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Loqman Ali',
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                SizedBox(width: 8.0),
                Text(
                  '@Loqman',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Fri, 12 May 2017 * 14.30',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: Text(
        'We also talk about the future of work as the robots advance We also talk about the future of work as the robots advance',
        style: TextStyle(
          color: Colors.grey.shade900,
          fontSize: 16.0,
          height: 1.3,
        ),
      ),
    );
  }

  Widget _cardFooter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.repeat,
                  color: Colors.orange,
                  size: 28,
                ),
                onPressed: () {},
              ),
              Text('25', style: TextStyle(color: Colors.grey, fontSize: 16)),
            ],
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  'SHARE',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'OPEN',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
      margin: EdgeInsets.only(top: 16.0),
    );
  }
}
