import 'package:flutter/material.dart';
import 'package:news_app/components/search_input.dart';
import 'package:news_app/components/news_item.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
            NewsItem(
              'A doua emisiune de obligaţiuni MW Green Power Export a intrat la tranzacţionare la Bursă',
              'Economical',
            ),
          ],
        ),
      ),
    );
  }
}
