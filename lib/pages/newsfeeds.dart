import 'package:flutter/material.dart';
import 'package:flutter_flutternews/widgets/header.dart';
import 'package:http/http.dart' as http;
import '../constants/constant.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'description.dart';
import 'dart:io';


class NewsFeedPage extends StatelessWidget {
  static String tag = "NewsFeedPage-tag";
  NewsFeedPage(this.category);
  final String category;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;


    fetchdatawidget(){
      return Scaffold(
          key: _scaffoldKey,
          appBar: header(context,titletext:"$category"),
          body:  new SafeArea(
              child: new Column(
                children: [
                  new Expanded(
                    flex: 1,
                    child: new Container(
                        width: width,
                        color: Colors.blue[100],
                        child: new GestureDetector(
                          child: FutureBuilder<List<News>>(
                            future: fatchNews(
                                http.Client(), category), // a Future<String> or null
                            builder: (context, snapshot) {
                              if (snapshot.hasError) print(snapshot.error);

                              return snapshot.hasData
                                  ? NewsList(news: snapshot.data)
                                  : Center(child: CircularProgressIndicator());
                            },
                          ),
                        )),
                  ),
                ],
              )),
      );

    }


    void showInSnackBar(String value) {
      _scaffoldKey.currentState.showSnackBar(
          SnackBar(content: Text(value,
            textAlign: TextAlign.center, style: TextStyle(fontSize: 12.0, fontWeight:
            FontWeight.bold,color: Colors.white),), duration: Duration(seconds: 2), backgroundColor: Colors.blue,)
      );
    }

    update(){


      fetchdatawidget();

      showInSnackBar("Updated");

      print("updated");

    }

    const tenSeconds = const Duration(seconds: 10);
    Timer.periodic(tenSeconds, (Timer t) => update());

    return fetchdatawidget();
  }
}

Future<List<News>> fatchNews(http.Client client, category) async {
  String url;

    url = Constant.base_url +
        "top-headlines?country=in&category="+category+"&apiKey=" +
        Constant.key;
  final response = await client.get(url);
  return compute(parsenews, response.body);
}

List<News> parsenews(String responsebody) {
  final parsed = json.decode(responsebody);
  return (parsed["articles"] as List)
      .map<News>((json) => new News.fromJson(json))
      .toList();
}

class News {
  String auther;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
 


  News({this.auther, this.title, this.description, this.url,this.urlToImage,this.publishedAt});

  factory News.fromJson(Map<String, dynamic> json) {

    return News(
    auther: json['author'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    url: json['url'] as String,
    urlToImage:json['urlToImage'] as String,
    publishedAt:json['publishedAt'] as String,
    );

  }



}




class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({Key key, this.news}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        return GestureDetector(

          onTap: () {
            var url = news[index].url;
            Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) => new DescriptionPage(url),
                ));
          },

          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,

                    child:news[index].publishedAt!=null?
                    Text(news[index].publishedAt.replaceAll("T", "  ").replaceAll("Z", ""),
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),):Text(""),

                ),
                news[index].title!=null?
                Text(news[index].title,style: TextStyle(fontSize: 20,fontFamily:"Anton-Regular",color: Colors.blue[900]),):Text(""),
                 Padding(
                   padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                   child: news[index].urlToImage!=null?Image.network(
                          news[index].urlToImage,
                          width:MediaQuery.of(context).size.width * 0.8,
                          height: 200,
                      ):Container(
                     width:MediaQuery.of(context).size.width * 0.8,
                     height: 200,
                     child: Image.asset("assets/image-not-found.jpg"),
                     
                   ),
                 ),
                news[index].description!=null?
                Text(news[index].description,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),):Text(""),

                   Divider(),

              ],
            ),
          ),
        );
      },
    );
  }
}
