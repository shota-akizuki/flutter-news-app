import 'package:flutter/material.dart';
import 'package:flutter_news_app/components/ArticleTile.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map data;
  List articles;

  Future getData() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=jp&apiKey=690103fa291b4c58bc157bff0e6d1630');
    final http.Response response = await http.get(url);
    final data = json.decode(response.body);
    setState(() {
      articles = data['articles'];
      print(articles);
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
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ArticleTile(
                title: articles[index]['title'],
                author: articles[index]['author'],
                urlToImage: articles[index]['urlToImage']);
          },
        ),
      ),
    );
  }
}
