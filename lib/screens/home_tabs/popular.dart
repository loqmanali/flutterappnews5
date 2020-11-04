import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: _drawSingleRow(),
        );
      },
      itemCount: 25,
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
}
