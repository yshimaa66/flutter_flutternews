import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_flutternews/helper/get_categories.dart';
import 'package:flutter_flutternews/model/category_model.dart';
import 'package:flutter_flutternews/widgets/header.dart';

import 'newsfeeds.dart';

void main() => runApp(new HomePage());

class HomePage extends StatelessWidget {
  static String tag = 'home-page';



  List<CategoryModel> categoriesList =  getCategories();



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
              child: new ListView.builder(
                itemCount: categoriesList.length,
                itemBuilder: (context, position) {
                  return  Center(
                    child: GestureDetector(
                      onTap: (){
                        var category = categoriesList[position].categoryName;
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
                                  image:  DecorationImage(
                                    image: AssetImage(categoriesList[position].imageUrl),
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
                                  categoriesList[position].categoryName,
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
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
