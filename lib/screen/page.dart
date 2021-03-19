import 'package:app_wat/screen/article/article_screen.dart';
import 'package:app_wat/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class Page {
  final Icon icon;
  final String title;
  final String label;
  final Widget screen;
  Page({this.screen, this.icon, this.title, this.label});
}

List<Page> pages = [
  Page(
    title: "หน้าแรก",
    icon: Icon(Icons.home),
    label: "หน้าแรก",
    screen: HomeScreen(),
  ),
  Page(
    title: "ข่าวสาร",
    icon: Icon(Icons.art_track_outlined),
    label: "ข่าว",
    screen: ArticleScreen(),
  ),
];
