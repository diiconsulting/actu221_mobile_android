import 'package:actu221_mobile/main.dart';
import 'package:actu221_mobile/screen/bar/top-bar-details-article.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:actu221_mobile/widget/card-details-article-same-catagorie.dart';
import 'package:actu221_mobile/widget/card-details-article-same-tag.dart';
import 'package:actu221_mobile/widget/card-details-article.dart';
import 'package:actu221_mobile/widget/card-menu.dart';
import 'package:actu221_mobile/widget/text-actu-auteur.dart';
import 'package:actu221_mobile/widget/text-article-date-publication.dart';
import 'package:actu221_mobile/widget/text-article-details-body.dart';
import 'package:actu221_mobile/widget/text-article-details-titre.dart';
import 'package:actu221_mobile/widget/text-siganture-article-details.dart';
import 'package:flutter/material.dart';

class DetailsArticle extends StatefulWidget {
  @override
  _DetailsArticleState createState() => _DetailsArticleState();
}

class _DetailsArticleState extends State<DetailsArticle> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: colorPrimaire,
        toolbarHeight: 0.0,
      ),
      drawer: Drawer(
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
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  CardDetailsArticleWidget(article: appState.articleDetails),
                  TextActuAuteur(),
                  TextArtticleDetailsTitre(),
                  TextSignatureArticleDetails(),
                  TextArticleDatePublication(),
                  TextArticleDetailsBody(),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  CardDetailsArticleSameCategorie(
                    articles: appState.listeArticle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CardDetailsArticleSameTag(),
                  Divider(),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
                height: size.height * .07,
                width: size.width,
                color: white,
                child: TopBarDetailsArticle(
                  scafoldKey: _scaffoldKey,
                )),
          ),
        ],
      ),
    );
  }
}
