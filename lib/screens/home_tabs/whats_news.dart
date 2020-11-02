import 'package:flutter/material.dart';

class WhatsNews extends StatefulWidget {
  @override
  _WhatsNewsState createState() => _WhatsNewsState();
}

class _WhatsNewsState extends State<WhatsNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _drawHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    TextStyle _headerTitle = TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    );
    TextStyle _headerDescription = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/placeholder_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'data'.toUpperCase(),
                style: _headerTitle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                'data',
                style: _headerDescription,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            child: _drawSectionTitle('Top Stories'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: Column(
                children: [
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    bottom: 8.0,
                    top: 8.0,
                  ),
                  child: _drawSectionTitle('Recent Update'),
                ),
                _drawRecentUpdateCard(Colors.deepOrange),
                _drawRecentUpdateCard(Colors.teal),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawDivider() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade100,
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            child: Image(
              image: ExactAssetImage('assets/placeholder_bg.png'),
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
                  'The World Global Warming Annual Summit',
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
                        Text('15 min'),
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

  Widget _drawSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.grey.shade700,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }

  Widget _drawRecentUpdateCard(Color color) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/placeholder_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Container(
              padding: EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 5.0, bottom: 5.0),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(5.0)),
              child: Text(
                'Sport',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
            child: Text(
              'Vettel is Ferrari Number One - Hamilton',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 16.0, right: 16.0, top: 8.0, bottom: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(width: 5),
                Text(
                  '15 Min',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
