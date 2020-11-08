import 'package:flutter/material.dart';
import 'package:flutterappnews5/shared_ui/navigation_drawer.dart';

class FacebookFeeds extends StatefulWidget {
  @override
  _FacebookFeedsState createState() => _FacebookFeedsState();
}

class _FacebookFeedsState extends State<FacebookFeeds> {
  TextStyle _hashTagStyle = TextStyle(color: Colors.orange);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Facebook Feeds'),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _drawHeader(),
                    _drawTitle(),
                    _drawHashTags(),
                    _drawBody(),
                    _drawFooter(),
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

  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                Text(
                  'Loqman Ali',
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 8.0),
                SizedBox(height: 8),
                Text(
                  'Fri, 12 May 2017 * 14.30',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey.shade400,
              ),
              onPressed: () {},
            ),
            Transform.translate(
              offset: Offset(-12, 0),
              child: Text(
                '25',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 16.0, right: 16.0),
      child: Text(
        'We also talk about the future of work as the robots',
        style: TextStyle(color: Colors.grey.shade900),
      ),
    );
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(
        children: [
          FlatButton(
            onPressed: () {},
            child: Text('#advance', style: _hashTagStyle),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('#advance', style: _hashTagStyle),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('#advance', style: _hashTagStyle),
          ),
        ],
      ),
    );
  }

  Widget _drawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Image(
        image: ExactAssetImage('assets/placeholder_bg.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
            onPressed: () {}, child: Text('10 COMMENTS', style: _hashTagStyle)),
        Row(
          children: [
            FlatButton(
                onPressed: () {}, child: Text('SHARE', style: _hashTagStyle)),
            FlatButton(
                onPressed: () {}, child: Text('OPEN', style: _hashTagStyle)),
          ],
        ),
      ],
    );
  }
}
