import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class SavedNewsScreen extends StatefulWidget {
  @override
  _SavedNewsScreenState createState() => _SavedNewsScreenState();
}

class _SavedNewsScreenState extends State<SavedNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved News',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: Center(child: Text('Saved News')),
    );
  }
}
