import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class TextMenuHambouger extends StatelessWidget {

  final String titre ;

  const TextMenuHambouger({Key key, this.titre}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Container(
      width: size.width * .3,
      height: size.height * .05,
      child: Padding(
        padding: const EdgeInsets.only(left :16.0),
        child: Text(titre , textAlign: TextAlign.start, style: TextStyle(
          color: black,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}