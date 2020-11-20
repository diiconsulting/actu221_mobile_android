import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class BtnTopBar extends StatelessWidget {

  final bool isActive ;

  final String titre ;

  const BtnTopBar({Key key, this.isActive, this.titre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * .05,
          width: size.width * .4,
          // color: colorPrimaire,
        ),
        Positioned(
          top: isActive ?  10.0 : 14.0,
          // left: size.width * .007,
          child: Text(
            titre,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: isActive ? 16 : 14, fontWeight: FontWeight.bold, color: isActive ? colorPrimaire : black),
          ),
        ),
        // Positioned(
        //   // top: size.height * .025,
        //   left: size.width * .35,
        //   child: Container(
        //     height: size.height * .05,
        //     width: 2,
        //     color: colorPrimaire,
        //   ),
        // )
      ],
    );
  }
}
