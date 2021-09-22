import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  final String? title;
  final String? author;
  final String? imageUrl;
  final String? description;

  NewsDetailsScreen(
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(),
    );
  }
}
