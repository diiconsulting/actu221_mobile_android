import 'package:actu221_mobile/main.dart';
import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:actu221_mobile/screen/home.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .45,
      width: size.width,
      child: Stack(
        children: [
          Container(
            height: size.height * .45,
            width: size.width,
            color: white,
          ),
          Positioned(
            top: 0,
            child: InkWell(
              onTap: () {
                appState.setState(() {
                  appState.screenApp = 2;
                  appState.articleDetails = article;
                });
              },
              child: Container(
                height: size.height * .35,
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/entreprenariat.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Positioned(
            top: size.height * .35,
            child: Container(
              height: size.height * .1,
              width: size.width,
              // color: Colors.blueGrey,
              color: white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Deux mort au bord de la Plage de Guédiawaye.',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * .33,
            child: Container(
              height: size.height * .05,
              width: size.width * .6,
              decoration: BoxDecoration(
                  color: colorPrimaire, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Covid-19',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
                height: 30,
                width: 30,
                child: IconButton(
                    icon: Icon(
                      article.isReadAfter
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: article.isReadAfter ? colorPrimaire : white,
                    ),
                    onPressed: () {
                      appState.setState(() {
                        appState
                                .listeArticle[appState.listeArticle.indexWhere(
                                    (element) => element.id == article.id)]
                                .isReadAfter =
                            !appState
                                .listeArticle[appState.listeArticle.indexWhere(
                                    (element) => element.id == article.id)]
                                .isReadAfter;
                      });
                      if (article.isReadAfter) {
                        homeScreenState.setState(() {
                          homeScreenState.listeArticlePlusTard.add(article);
                        });
                      } else {
                        homeScreenState.setState(() {
                          homeScreenState.listeArticlePlusTard.remove(article);
                        });
                      }
                    })),
          ),
        ],
      ),
    );
  }
}
