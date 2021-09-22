// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

News newsFromJson(String str) => News.fromJson(json.decode(str));

class News {
  News({
    this.status,
    this.totalResults,
    required this.articles,
  });

  String? status;
  int? totalResults;
  Iterable<Article> articles;

  factory News.fromJson(Map<String, dynamic> json) => News(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );
}

class Article {
  String? author;
  String? title;
  String? description;
  String? urlToImage;

  Article({
    this.author,
    this.title,
    this.description,
    this.urlToImage,
  });

  factory Article.fromJson(Map<dynamic, dynamic> parsedJson) {
    return Article(
      author: parsedJson['author'],
      title: parsedJson['title'],
      description: parsedJson['description'],
      urlToImage: parsedJson['urlToImage'],
    );
  }
}
