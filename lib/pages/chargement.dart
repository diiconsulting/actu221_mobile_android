import 'dart:convert';

import 'package:actu221_mobile/main.dart';
import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:actu221_mobile/utils/web.dart';
import 'package:flutter/material.dart';

class ChargementPage extends StatefulWidget {
  @override
  _ChargementPageState createState() => _ChargementPageState();
}

class _ChargementPageState extends State<ChargementPage> {
  List<Article> listeArticles = [];

  @override
  void initState() {
    super.initState();
    getApi();
  }

  void getApi() async {
    // await Future.delayed(Duration(seconds: 4));
    UtilsHttp.getByIssa2('posts').then((data) async {
      listeArticles = Article.fromJson(json.decode(data.body));
      appState.setState(() {
        appState.screenApp = 1 ;
        appState.listeArticle = listeArticles;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: white,
        ),
        Positioned(
          top: size.height * .35,
          left: size.width * .275,
          child: Container(
            height: size.height * .3,
            width: size.width * .45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo221_rouge.png'),
                fit: BoxFit.cover
              )
            ),
          ),
        )
      ],
    );
  }
}
