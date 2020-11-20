import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class TextSignatureArticleDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .03,
      width: size.width,
      // color: black,
      child: Row(
        children: [
          SizedBox(width: 10,),
          Text('Texte par : ' , style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 12
          ),),
          SizedBox(width: 5),
          Text('Actu221' , style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: colorPrimaire
          ),)
        ],
      ),
    );
  }
}