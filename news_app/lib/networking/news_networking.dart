import 'package:http/http.dart' as http;
import 'package:news_app/utils/constants.dart';
import 'package:news_app/utils/news_model.dart';

class ApiService {
  var client = http.Client();

  Future<News> getNews(String query) async {
    var response = await client.get(
      Uri.parse(
          'https://newsapi.org/v2/everything?q=$query&language=en&sortBy=publishedAt&apiKey=$kApiKey'),
    );

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return newsFromJson(jsonString);
    }
    throw Exception('error');
  }
}
