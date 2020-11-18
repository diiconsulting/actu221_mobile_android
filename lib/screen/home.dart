import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/pages/accueil.dart';
import 'package:actu221_mobile/screen/bar/top-bar-list.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:actu221_mobile/widget/card-flash-info.dart';
import 'package:actu221_mobile/widget/card-menu.dart';
import 'package:actu221_mobile/screen/bar/top-bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

_HomeScreenState homeScreenState;

class HomeScreen extends StatefulWidget {
  final List<Article> articles;

  const HomeScreen({Key key, this.articles}) : super(key: key);

  @override
  _HomeScreenState createState() {
    homeScreenState = _HomeScreenState();
    return homeScreenState;
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool topBar = false;

  bool ala_une = true;
  
  bool politique = false ;

  bool ecomique = false;

  bool societe = false;
  
  bool sport = false;
  
  @override
  Widget build(BuildContext context) {
    print('Liste Article => ${widget.articles.length}');
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: colorPrimaire,
        toolbarHeight: 0.0,
      ),
      drawer: Container(
        height: size.height,
        width: size.width * .7,
        color: white,
        child: CardMenuHambouger(),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Colors.grey[200],
          ),
          Positioned(
            top: size.height * .073,
            child: Container(
              height: size.height,
              width: size.width,
              child: AcceuilPage(
                articles: widget.articles,
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
                height: size.height * .07,
                width: size.width,
                color: white,
                child: TopBar(
                  scafoldKey: _scaffoldKey,
                )),
          ),
          homeScreenState.topBar
              ? Positioned(
                  top: size.height * .065,
                  child: Container(
                      height: size.height * .05,
                      width: size.width,
                      color: Colors.grey[200],
                      child: TopBarList()),
                )
              : Container(),
          Positioned(
            bottom: 0,
            child: Container(
              height: size.height * .065,
              width: size.width,
              // color: black.withOpacity(.2),
              child: CarouselSlider(
                  items: widget.articles
                      .map((e) => CardFlashInfo(
                            article: e,
                          ))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      // aspectRatio: 1.0,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayInterval: Duration(milliseconds: 8000))),
            ),
          ),
        ],
      ),
    );
  }
}
