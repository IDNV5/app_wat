import 'package:app_wat/screen/article/article_screen.dart';
import 'package:app_wat/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Page> _pages = [
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

  onTabChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://via.placeholder.com/150x150",
                  ),
                ),
                accountName: Text("Bundit Nuntates"),
                accountEmail: Text(
                  "silkyland@gmail.com",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text("หน้าแรก"),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_comment_outlined,
                ),
                title: Text("ประวัติวัด"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            _pages[_currentIndex].title,
          ),
        ),
        body: _pages[_currentIndex].screen,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabChanged,
          items: _pages
              .map(
                (page) => BottomNavigationBarItem(
                  icon: page.icon,
                  label: page.label,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class Page {
  final Icon icon;
  final String title;
  final String label;
  final Widget screen;
  Page({this.screen, this.icon, this.title, this.label});
}
