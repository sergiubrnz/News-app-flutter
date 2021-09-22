import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class NewsItem extends StatelessWidget {
  late final String title;
  late final String author;
  late final String imageUrl;

  NewsItem(
    this.title,
    this.author,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Card(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        title,
                        maxLines: 2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kTitleText,
                        ),
                      ),
                    ),
                    Text(
                      author,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 15,
                        color: kAuthorText,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
