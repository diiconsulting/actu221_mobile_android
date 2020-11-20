import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class CardDetailsArticleSameCategorie extends StatefulWidget {
  final List<Article> articles;

  const CardDetailsArticleSameCategorie({Key key, this.articles})
      : super(key: key);

  @override
  _CardDetailsArticleSameCategorieState createState() =>
      _CardDetailsArticleSameCategorieState();
}

class _CardDetailsArticleSameCategorieState
    extends State<CardDetailsArticleSameCategorie> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .32,
      width: size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: listArticleSameCategorie(widget.articles),
      ),
    );
  }

  List<Widget> listArticleSameCategorie(List<Article> articles) {
    List<Widget> l = [];

    for (var item in articles) {
      l.add(cardArticleSameCategorie(article: item));
      l.add(SizedBox(
        width: 15,
      ));
    }
    l.add(SizedBox(
      height: 50,
    ));

    return l;
  }

  Widget cardArticleSameCategorie({@required Article article}) {
    return Card(
      child: Stack(
        children: [
          Container(
            height: size.height * .3,
            width: size.width * .6,
            color: white,
          ),
          Positioned(
            child: Container(
              height: size.height * .2,
              width: size.width * .6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/entreprenariat.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: size.height * .2 + 5,
            child: Container(
              width: size.width * .6,
              height: size.height * .1 - 5,
              child: Text(
                'Covid-19 , Hommage à Samuel Paty, la rentrée scolaire susc...',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo221_rouge.png'),
                      fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
