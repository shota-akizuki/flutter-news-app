import 'package:flutter/material.dart';
import 'package:flutter_news_app/components/ArticleTile.dart';
import 'package:flutter_news_app/components/Loading.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

//記事一覧を表示する画面
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data;
  List articles;
  bool visibleLoading = false;

  Future getData() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=jp&apiKey=690103fa291b4c58bc157bff0e6d1630');
    final http.Response response = await http.get(url);
    final data = json.decode(response.body);

    setState(() {
      articles = data['articles'];
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter News App'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: ListView.builder(
              itemCount: articles == null ? 0 : 10,
              itemBuilder: (BuildContext context, int index) {
                return ArticleTile(
                  title: articles[index]['title'],
                  author: articles[index]['author'],
                  urlToImage: articles[index]['urlToImage'],
                  url: articles[index]['url'],
                );
              },
            ),
          ),
          Loading(
            visible: articles == null,
          )
        ],
      ),
    );
  }
}
