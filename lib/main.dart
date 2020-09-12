import 'package:flutter/material.dart';

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatefulWidget {
  MovieApp({Key key}) : super(key: key);

  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  final bColor = Color(0xff101629);
  final tColor = Colors.white;
  final aColor = Color(0xffc69e5d);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bColor,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
          title: Text(
            'Movies',
            style: TextStyle(color: tColor),
          ),
          backgroundColor: aColor,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Chip(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            backgroundColor: aColor,
                            label: Text(
                              'All',
                              style: TextStyle(color: tColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Chip(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            backgroundColor: Colors.grey,
                            label: Text(
                              'Action',
                              style: TextStyle(color: tColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Chip(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            backgroundColor: Colors.grey,
                            label: Text(
                              'Comdey',
                              style: TextStyle(color: tColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Chip(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            backgroundColor: Colors.grey,
                            label: Text(
                              'Adventure',
                              style: TextStyle(
                                color: tColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Top Trends',
                          style: TextStyle(
                            color: tColor,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: MovieCard(
                              'Cars 3', '8.5 / 10', 'images/cars.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: MovieCard(
                              'Frozen', '9.2 / 10', 'images/frozen.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: MovieCard(
                              'Big Foot', '8.7 / 10', 'images/bigfoot.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                            color: tColor,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: MovieCard(
                              'Funan', '8.9 / 10', 'images/funan.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: MovieCard(
                              'Onward', '7.9 / 10', 'images/onward.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: MovieCard(
                              'Lion King', '8.2 / 10', 'images/lion.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget MovieCard(
    String title,
    String rate,
    String image,
  ) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              width: 130,
              height: 160,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              color: tColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            rate,
            style: TextStyle(
              color: tColor,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
