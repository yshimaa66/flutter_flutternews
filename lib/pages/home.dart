import 'package:flutter/material.dart';
import 'package:flutter_flutternews/widgets/header.dart';

import 'newsfeeds.dart';

void main() => runApp(new HomePage());

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: header(context,isApptitle: true,titletext:"NewsApp"),

      body: new SafeArea(
        child: Container(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: new ListView(
                children: [
                  Center(
                    child: GestureDetector(
                    onTap: (){

                      var category = "Business";
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new NewsFeedPage(category),
                          ));
          },
              child: Container(

                    child: Stack(
                      children: <Widget>[
                       Container(
                         width: MediaQuery.of(context).size.width * 0.8,
                         height: 200,
                         decoration: BoxDecoration(
                           image: const DecorationImage(
                             image: AssetImage("assets/business.jpeg"),
                             fit: BoxFit.cover,
                           ),
                           border: Border.all(
                             color: Colors.black,
                             width: 2,
                           ),
                           borderRadius: BorderRadius.circular(12),
                         ),

                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.black26, // if we use decoration color should inside the decoration
                          ),
                          child: Text(
                            "Business",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    )
              ),
          ),
                  ),

                  Center(
                    child: GestureDetector(
                      onTap: (){

                        var category = "Entertainment";
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new NewsFeedPage(category),
                            ));
                      },
                      child: Container(

                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/entertainment.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),

                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black26, // if we use decoration color should inside the decoration
                                ),
                                child: Text(
                                  "Entertainment",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){

                        var category = "General";
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new NewsFeedPage(category),
                            ));
                      },
                      child: Container(

                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/general.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),

                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black26, // if we use decoration color should inside the decoration
                                ),
                                child: Text(
                                  "General",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){

                        var category = "Health";
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new NewsFeedPage(category),
                            ));
                      },
                      child: Container(

                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/health.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),

                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black26, // if we use decoration color should inside the decoration
                                ),
                                child: Text(
                                  "Health",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){

                        var category = "Science";
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new NewsFeedPage(category),
                            ));
                      },
                      child: Container(

                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/science.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),

                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black26, // if we use decoration color should inside the decoration
                                ),
                                child: Text(
                                  "Science",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),

                  Center(
                    child: GestureDetector(
                      onTap: (){

                        var category = "Sports";
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new NewsFeedPage(category),
                            ));
                      },
                      child: Container(

                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/sport.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),

                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black26, // if we use decoration color should inside the decoration
                                ),
                                child: Text(
                                  "Sports",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: (){

                        var category = "Technology";
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (BuildContext context) =>
                              new NewsFeedPage(category),
                            ));
                      },
                      child: Container(

                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage("assets/technology.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),

                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black26, // if we use decoration color should inside the decoration
                                ),
                                child: Text(
                                  "Technology",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
