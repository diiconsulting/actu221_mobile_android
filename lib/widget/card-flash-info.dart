import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class CardFlashInfo extends StatelessWidget {
  final Article article;

  const CardFlashInfo({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .07,
      width: size.width,
      // color: black,
      child: Stack(
        children: [
          Positioned(
            child: Container(
                width: size.width, height: size.height * .07, color: white),
          ),
          Positioned(
            top: 5,
            child: Container(
              width: size.width * .37,
              height: size.height * .04,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'TRANSHUMANCE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: white),
                ),
              ),
              decoration: BoxDecoration(
                  color: colorPrimaire, borderRadius: BorderRadius.circular(3)),
            ),
          ),
          Positioned(
            left: size.width * .4,
            child: Container(
              height: size.height * .07,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: size.height * .04,
                  width: size.width * .55,
                  child: Text(
                    '"D\'autres opposants vont bientôt rejoindre Macky Sall" (Abdoulaye Baldé)',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
