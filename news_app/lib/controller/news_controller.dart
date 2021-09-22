import 'package:get/get.dart';
import 'package:news_app/networking/news_networking.dart';
import 'package:news_app/utils/news_model.dart';

class NewsControler extends GetxController {
  var newsList = List<Article>.empty(growable: true).obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getNews();
  }

  void getNews() async {
    var news = await ApiService().getNews('tesla');

    try {
      if (news != null) {
        newsList.addAll(news.articles);
      }
    } finally {
      isLoading(false);
    }
  }
}
