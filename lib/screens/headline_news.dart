import 'package:flutter/material.dart';
import 'package:flutterappnews5/shared_ui/navigation_drawer.dart';
import 'package:flutterappnews5/styles/colors.dart';

import 'home_tabs/favourites.dart';
import 'home_tabs/popular.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Headline News'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'WHAT\'S NEW'),
              Tab(text: 'POPULAR'),
              Tab(text: 'FAVOURITES'),
            ],
            controller: _tabController,
            indicatorColor: KIndicatorColor,
          ),
        ),
        drawer: NavigationDrawer(),
        body: Center(
            child: TabBarView(
          children: [
            Favourites(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        )),
      ),
    );
  }
}
