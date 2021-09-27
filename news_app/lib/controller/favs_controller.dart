import 'package:get/get.dart';
import 'package:news_app/utils/news_model.dart';

class FavouritesControler extends GetxController {
  static var FavouritesList = List<Article>.empty(growable: true).obs;

  FavouritesControler();
}
