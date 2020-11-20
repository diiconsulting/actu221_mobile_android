import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/screen/bar/top-bar-list.dart';
import 'package:actu221_mobile/widget/card-article.dart';
import 'package:flutter/material.dart';

List<Widget> getAllPieceOfArticle({List<Article> articles, Size size, int j = 0}) {
  List<Widget> liste = [];
  int i = 0;
  for (var item in articles) {
    i++;
    if (j == 0) {
      if (i == 2) {
        liste.add(Container(
            height: size.height * .05, width: size.width, child: TopBarList()));
      } else {
        liste.add(CardArticle(
          article: item,
        ));
      }
    } else {
      liste.add(CardArticle(
        article: item,
      ));
    }
  }
  liste.add(SizedBox(
    height: 150,
  ));

  return liste;
}
