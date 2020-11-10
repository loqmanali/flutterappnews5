import 'package:flutter/material.dart';
import 'package:flutterappnews5/screens/home_tabs/favourites.dart';
import 'package:flutterappnews5/screens/home_tabs/popular.dart';
import 'package:flutterappnews5/screens/home_tabs/whats_news.dart';
import 'package:flutterappnews5/shared_ui/navigation_drawer.dart';
import 'package:flutterappnews5/styles/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu { HELP, ABOUT, CONTACT, SETTING }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Explore'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            _popOutMenu(context),
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
            WhatsNews(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        )),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton<PopOutMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            child: Text('ABOUT'),
            value: PopOutMenu.ABOUT,
          ),
          PopupMenuItem<PopOutMenu>(
            child: Text('CONTACT'),
            value: PopOutMenu.CONTACT,
          ),
          PopupMenuItem<PopOutMenu>(
            child: Text('HELP'),
            value: PopOutMenu.HELP,
          ),
          PopupMenuItem<PopOutMenu>(
            child: Text('SETTING'),
            value: PopOutMenu.SETTING,
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {},
      icon: Icon(Icons.more_vert),
    );
  }
}
