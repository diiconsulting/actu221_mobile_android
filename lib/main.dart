import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/pages/chargement.dart';
import 'package:actu221_mobile/pages/details-article.dart';
import 'package:actu221_mobile/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

_MyAppState appState ;

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() {
    appState = _MyAppState();
    return appState;
  }
}

class _MyAppState extends State<MyApp> {

  int screenApp = 0 ;

  Article articleDetails ;

  List<Article> listeArticle = [] ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screenApp == 0 ? ChargementPage() : screenApp == 1 ? HomeScreen(articles: appState.listeArticle,) : DetailsArticle(),
    );
  }
}
