import 'package:actu221_mobile/utils/constant.dart';
import 'package:actu221_mobile/utils/get-all-piese-of-article.dart';
import 'package:flutter/material.dart';
import 'package:actu221_mobile/screen/home.dart';

class ShowListArtilceAfter extends StatefulWidget {
  @override
  _ShowListArtilceAfterState createState() => _ShowListArtilceAfterState();
}

class _ShowListArtilceAfterState extends State<ShowListArtilceAfter> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(getAllPieceOfArticle(
            articles: homeScreenState.listeArticlePlusTard, size: size, j: 1)
        .length);
    return ListView(
      physics: BouncingScrollPhysics(),
      controller: _controller,
      children: getAllPieceOfArticle(
                      articles: homeScreenState.listeArticlePlusTard,
                      size: size,
                      j: 1)
                  .length >
              1
          ? getAllPieceOfArticle(
              articles: homeScreenState.listeArticlePlusTard, size: size, j: 1)
          : [
              Container(
                height: size.height * .5,
                width: size.width,
                child: Center(
                  child: Text(
                    'Pas d\'article à lire pour l\'intant merci pour votre coprehension.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: colorPrimaire,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0),
                  ),
                ),
              )
            ],
    );
  }
}
