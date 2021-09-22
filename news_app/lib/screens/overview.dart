import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/search_input.dart';
import 'package:news_app/components/news_item.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/screens/news_details.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
            SearchInput(),
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
