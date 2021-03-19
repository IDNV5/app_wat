import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  ArticleScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("article_screen"),
      ),
    );
  }
}
