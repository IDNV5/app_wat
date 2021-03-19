import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 200,
              child: Swiper(
                itemCount: 3,
                autoplay: true,
                pagination: SwiperPagination(),
                itemBuilder: (context, index) {
                  return Image.network(
                    "https://via.placeholder.com/720x480",
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 150,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image.network(
                        "https://via.placeholder.com/480x360",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 5, right: 5),
                            tileColor: Colors.white,
                            leading: Image.network(
                              'https://via.placeholder.com/150x150',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              "argument is null, the text will use the style from the closest enclosing",
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            subtitle: Text(
                              "use the style from the closest enclosing",
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 5, right: 5),
                            tileColor: Colors.white,
                            leading: Image.network(
                              'https://via.placeholder.com/150x150',
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              "argument is null, the text will use the style from the closest enclosing",
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            subtitle: Text(
                              "use the style from the closest enclosing",
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: PageScrollPhysics(),
              children: [
                Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 5, right: 5),
                    tileColor: Colors.white,
                    leading: Image.network(
                      'https://via.placeholder.com/150x150',
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      "argument is null, the text will use the style from the closest enclosing",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    subtitle: Text(
                      "use the style from the closest enclosing",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 5, right: 5),
                    tileColor: Colors.white,
                    leading: Image.network(
                      'https://via.placeholder.com/150x150',
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      "argument is null, the text will use the style from the closest enclosing",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    subtitle: Text(
                      "use the style from the closest enclosing",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 5, right: 5),
                    tileColor: Colors.white,
                    leading: Image.network(
                      'https://via.placeholder.com/150x150',
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      "argument is null, the text will use the style from the closest enclosing",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    subtitle: Text(
                      "use the style from the closest enclosing",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
