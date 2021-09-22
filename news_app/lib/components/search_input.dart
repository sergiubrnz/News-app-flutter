import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class SearchInput extends StatelessWidget {
  SearchInput();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 300),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: 'Search for articles',
                  hintStyle: TextStyle(
                    color: kSearchField,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
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
        ),
      ],
    );
  }
}
