import 'package:flutter/material.dart';
import 'package:flutter_news_app/model/MainModel.dart';
import 'package:flutter_news_app/screens/ArticlePage.dart';
import 'package:provider/provider.dart';

class ArticleTile extends StatelessWidget {
  ArticleTile({
    this.title,
    this.author,
    this.urlToImage,
  });

  String title;
  String author;
  String urlToImage;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        builder: (context, snapshot) {
          return Consumer<MainModel>(builder: (context, model, child) {
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticlePage(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey[900],
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Center(child: Image.network(urlToImage)),
                          height: 100,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: Center(
                              child: Column(
                            children: [
                              Text(title),
                              Text(author),
                            ],
                          )),
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
        });
  }
}
