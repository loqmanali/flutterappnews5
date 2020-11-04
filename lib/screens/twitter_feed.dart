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
          title: Text('Twitter Feed'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        drawer: NavigationDrawer(),
        body: ListView.builder(
          itemBuilder: (context, position) {
            return Card(
              child: Column(
                children: [
                  _cardHeader(),
                  _cardBody(),
                  _cardFooter(),
                ],
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
                Text('Loqman Ali'),
                Text('@Loqman'),
              ],
            ),
            SizedBox(height: 8),
            Text('Fri, 12 May 2017 * 14.30'),
          ],
        ),
      ],
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: Text(
          'We also talk about the future of work as the robots advance We also talk about the future of work as the robots advance'),
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
                ),
                onPressed: () {},
              ),
              Text('25'),
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
}
