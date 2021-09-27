import 'package:flutter/material.dart';
import 'package:news_app/controller/favs_controller.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/components/news_item.dart';
import 'package:get/get.dart';
import 'news_details.dart';

class SavedNewsScreen extends StatefulWidget {
  @override
  _SavedNewsScreenState createState() => _SavedNewsScreenState();
}

class _SavedNewsScreenState extends State<SavedNewsScreen> {
  FavouritesControler f = Get.put(FavouritesControler());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            'Saved News',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: kBackgroundColor,
          elevation: 0,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(NewsDetailsScreen(
                  FavouritesControler.FavouritesList[index].title!,
                  FavouritesControler.FavouritesList[index].author!,
                  FavouritesControler.FavouritesList[index].urlToImage!,
                  FavouritesControler.FavouritesList[index].description!,
                ));
              },
              child: NewsItem(
                FavouritesControler.FavouritesList[index].title!,
                FavouritesControler.FavouritesList[index].author!,
                FavouritesControler.FavouritesList[index].urlToImage!,
              ),
            );
          },
          itemCount: FavouritesControler.FavouritesList.length,
        ),
      ),
    );
  }
}
