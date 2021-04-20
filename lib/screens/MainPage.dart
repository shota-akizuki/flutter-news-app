import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/BookmarkPage.dart';
import 'package:flutter_news_app/screens/HomePage.dart';

//NavBar付きメイン画面
class MainPage extends StatelessWidget {
  final pages = [
    HomePage(),
    BookmarkPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.bookmark),
              ),
            ],
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicatorColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
