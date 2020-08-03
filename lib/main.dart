import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/newsfeeds.dart';
import 'pages/description.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    DescriptionPage.tag: (context) => DescriptionPage(null),
    NewsFeedPage.tag: (context) => NewsFeedPage(null)
  };

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,//primryColor
        accentColor: Colors.black,

      ),
      home: HomePage(),
      routes: routes,
    );
  }
}
