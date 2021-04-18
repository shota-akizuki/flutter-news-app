import 'package:flutter/material.dart';
import 'components/ArticleTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final articles = [
    {
      "urlToImage": 'https://picsum.photos/200',
      "title":
          'React Native は、Facebookが開発したクロスプラットフォームアプリ開発用フレームワークです。 ReactNative でアプリを作ることで、クロスプラットフォーム( iOS / Androidどちらでも動く)アプリを作ることができます。',
      "author": 'Techニュース',
    },
    {
      "urlToImage": 'https://picsum.photos/201',
      "title":
          'React Native Japan コミュニティは、日本でのReact Nativeの普及のため、活動を行っているコミュニティです。',
      "author": 'React Native Japan',
    },
    {
      "urlToImage": 'https://picsum.photos/203',
      "title":
          'JavaScriptはプロトタイプベースのオブジェクト指向スクリプト言語であるが、クラスなどのクラスベースに見られる機能も取り込んでいます。',
      "author": 'JavaScriptFan',
    },
    {
      "urlToImage": 'https://picsum.photos/203',
      "title":
          'JavaScriptはプロトタイプベースのオブジェクト指向スクリプト言語であるが、クラスなどのクラスベースに見られる機能も取り込んでいます。',
      "author": 'JavaScriptFan',
    },
    {
      "urlToImage": 'https://picsum.photos/203',
      "title":
          'JavaScriptはプロトタイプベースのオブジェクト指向スクリプト言語であるが、クラスなどのクラスベースに見られる機能も取り込んでいます。',
      "author": 'JavaScriptFan',
    },
    {
      "urlToImage": 'https://picsum.photos/203',
      "title":
          'JavaScriptはプロトタイプベースのオブジェクト指向スクリプト言語であるが、クラスなどのクラスベースに見られる機能も取り込んでいます。',
      "author": 'JavaScriptFan',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter News App'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ArticleTile(
                title: articles[index]['title'],
                author: articles[index]['author'],
                urlToImage: articles[index]['urlToImage'],
              );
            },
          ),
        ),
      ),
    );
  }
}
