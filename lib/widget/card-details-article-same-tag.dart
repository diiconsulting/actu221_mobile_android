import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class CardDetailsArticleSameTag extends StatefulWidget {
  @override
  _CardDetailsArticleSameTagState createState() =>
      _CardDetailsArticleSameTagState();
}

class _CardDetailsArticleSameTagState extends State<CardDetailsArticleSameTag> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .35,
      width: size.width,
      // color: colorPrimaire,
      child: Column(
        children: [
          cardArticleTag(),
          cardArticleTag(),
        ],
      ),
    );
  }

  Widget cardArticleTag() {
    return Card(
      // color: colorPrimaire,
      elevation: 2,
      child: Row(
        children: [
          SizedBox(width: 5,),
          Container(
            height: size.height * .15,
            width: size.width * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/entreprenariat.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            height: size.height * .15,
            width: size.width * .65,
            color: white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('France : Macron optient du culte musulman la creation d\'un conseil des imans.' ,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200
              ),),
            ),
          )
        ],
      ),
    );
  }
}
