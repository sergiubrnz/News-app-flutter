import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/screens/news_details.dart';
import 'package:news_app/components/news_item.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  late String search;

  OutlineInputBorder border = OutlineInputBorder(
      borderSide: const BorderSide(
    color: kSearchField,
    width: 2.0,
  ));

  NewsControler n = Get.put(NewsControler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 300),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: kSearchField,
                            ),
                            hintText: 'Search for articles',
                            hintStyle: TextStyle(
                              color: kSearchField,
                            ),
                            focusedBorder: border,
                            border: border,
                          ),
                          onChanged: (text) {
                            if (text.length >= 3) {
                              n.getNews(text);
                            } else {
                              n.getNews('tesla');
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Obx(() => n.isLoading.value
                ? Expanded(
                    child: Column(
                      children: [
                        CircularProgressIndicator(
                          color: kAuthorText,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Loading articles...',
                          style: TextStyle(
                            color: kAuthorText,
                            fontSize: 18,
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(NewsDetailsScreen(
                              n.newsList[index].title!,
                              n.newsList[index].author == null
                                  ? ''
                                  : n.newsList[index].author!,
                              n.newsList[index].urlToImage == null
                                  ? 'https://images.pexels.com/photos/356079/pexels-photo-356079.jpeg?cs=srgb&dl=pexels-pixabay-356079.jpg&fm=jpg'
                                  : n.newsList[index].urlToImage!,
                              n.newsList[index].description!,
                            ));
                          },
                          child: NewsItem(
                            n.newsList[index].title!,
                            n.newsList[index].author == null
                                ? ''
                                : n.newsList[index].author!,
                            n.newsList[index].urlToImage == null
                                ? 'https://images.pexels.com/photos/356079/pexels-photo-356079.jpeg?cs=srgb&dl=pexels-pixabay-356079.jpg&fm=jpg'
                                : n.newsList[index].urlToImage!,
                          ),
                        );
                      },
                      itemCount: n.newsList.length,
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}
