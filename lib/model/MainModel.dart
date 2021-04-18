import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
//空の配列を初期値にする
  final articles = [];

//記事を取得する

  void fetchArticles() {}

//記事を更新
  void setArticles() {
    notifyListeners();
  }
}
