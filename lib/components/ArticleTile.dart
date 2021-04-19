import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/ArticlePage.dart';

class ArticleTile extends StatelessWidget {
  ArticleTile({
    this.title,
    this.author,
    this.urlToImage,
  });

  final String title;
  final String author;
  final String urlToImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ArticlePage(),
        ),
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[500],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: (urlToImage == null)
                    ? Image.network('https://source.unsplash.com/random')
                    : Image.network(urlToImage),
                height: 150,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text((author == null ? '' : author)),
                    ],
                  ),
                ),
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
