import 'dart:math';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorsList = [
    Colors.red,
    Colors.teal,
    Colors.deepOrange,
    Colors.indigo,
    Colors.brown,
    Colors.purple,
  ];

  Random random = Random();

  Color _getRandomColor() {
    return colorsList[random.nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                _authorRow(),
                SizedBox(height: 16),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 25,
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/placeholder_bg.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 16.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Karina', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text('15 Min-', style: TextStyle(color: Colors.grey)),
                    Text(
                      'Life Style',
                      style: TextStyle(color: _getRandomColor()),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/placeholder_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: 125,
          height: 125,
          margin: EdgeInsets.only(right: 16.0),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                'Tech Tent: old phones and safe social',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'Tech Tent: old phones and safe social Tech Tent: old phones and safe social Tech Tent: old phones and safe social',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
