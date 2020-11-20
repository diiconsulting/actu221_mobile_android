import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:actu221_mobile/screen/home.dart';
import 'package:actu221_mobile/main.dart';

class CardDetailsArticleWidget extends StatefulWidget {
  final Article article;

  const CardDetailsArticleWidget({Key key, this.article}) : super(key: key);

  @override
  _CardDetailsArticleWidgetState createState() =>
      _CardDetailsArticleWidgetState();
}

class _CardDetailsArticleWidgetState extends State<CardDetailsArticleWidget> {
  bool showTitle = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * .27,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/entreprenariat.jpg'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: 0,
          right: 10,
          child: Container(),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
              height: 30,
              width: 30,
              child: IconButton(
                  icon: Icon(
                    widget.article.isReadAfter
                        ? Icons.bookmark
                        : Icons.bookmark_border,
                    color: widget.article.isReadAfter ? colorPrimaire : white,
                  ),
                  onPressed: () {
                    appState.setState(() {
                      appState
                              .listeArticle[appState.listeArticle.indexWhere(
                                  (element) => element.id == widget.article.id)]
                              .isReadAfter =
                          !appState
                              .listeArticle[appState.listeArticle.indexWhere(
                                  (element) => element.id == widget.article.id)]
                              .isReadAfter;
                    });
                    if (widget.article.isReadAfter) {
                      homeScreenState.setState(() {
                        homeScreenState.listeArticlePlusTard
                            .add(widget.article);
                      });
                    } else {
                      homeScreenState.setState(() {
                        homeScreenState.listeArticlePlusTard
                            .remove(widget.article);
                      });
                    }
                  })),
        ),
        showTitle
            ? Positioned(
                bottom: 10,
                right: 20,
                child: Container(
                  height: 29,
                  width: size.width * .9,
                  child: Center(
                    child: Text(widget.article.titre , textAlign: TextAlign.center, style: TextStyle(
                      color: white
                    ),),
                  ),
                  decoration: BoxDecoration(
                      color: colorPrimaire,
                      borderRadius: BorderRadius.circular(5)),
                ),
              )
            : Container(),
        Positioned(
          bottom: 20,
          right: 20,
          child: Container(
              height: 30,
              width: 30,
              child: IconButton(
                  icon: Icon(
                    Icons.info,
                    color: white,
                    size: 34,
                  ),
                  onPressed: () {
                    setState(() {
                      showTitle = !showTitle;
                    });
                  })),
        ),
      ],
    );
  }
}
