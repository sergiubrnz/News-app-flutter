import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class SearchInput extends StatelessWidget {
  SearchInput();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 300),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_outlined),
              hintText: 'Search for articles',
              hintStyle: TextStyle(
                color: kSearchField,
              ),
            ),
            onChanged: (text) {
              if (text.length >= 3) {
                print(text);
              }
            },
          ),
        ),
      ),
    );
  }
}
