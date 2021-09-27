import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class DetailsCard extends StatelessWidget {
  String title;
  String author;
  String imageUrl;
  String description;

  DetailsCard(
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 60,
                ),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 50, bottom: 20, left: 20, right: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: kTitleText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                author,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: kAuthorText,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Divider(
                              thickness: 2,
                              height: 15,
                              color: kSearchField,
                            ),
                          ),
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 14,
                            color: kTitleText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(5),
                width: 100,
                height: 100,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
