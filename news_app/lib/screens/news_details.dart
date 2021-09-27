import 'package:flutter/material.dart';
import 'package:news_app/components/details_card.dart';
import 'package:news_app/controller/favs_controller.dart';
import 'package:news_app/utils/news_model.dart';
import 'package:get/get.dart';

class NewsDetailsScreen extends StatelessWidget {
  final String? title;
  final String? author;
  final String? imageUrl;
  final String? description;
  late bool isFav = false;
  late int index;

  NewsDetailsScreen(
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  );

  FavouritesControler c = Get.put(FavouritesControler());

  @override
  Widget build(BuildContext context) {
    Article art = new Article(
      title: title,
      author: author,
      description: description,
      urlToImage: imageUrl,
    );

    for (int i = 0; i < FavouritesControler.FavouritesList.length; i++) {
      if (FavouritesControler.FavouritesList[i].title == art.title) {
        isFav = true;
        index = i;
        break;
      } else {
        isFav = false;
      }
    }

    print(isFav);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Article details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: isFav
                  ? Icon(
                      Icons.bookmark,
                      size: 30,
                    )
                  : Icon(
                      Icons.bookmark_outline,
                      size: 30,
                      color: Colors.black,
                    ),
            ),
            onTap: () {
              if (!isFav) {
                FavouritesControler.FavouritesList.add(art);
                Navigator.pop(context);
              } else {
                FavouritesControler.FavouritesList.removeAt(index);
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
      body: DetailsCard(
        title!,
        author!,
        imageUrl!,
        description!,
      ),
    );
  }
}
