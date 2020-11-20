import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class TextActuAuteur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .05,
      width: size.width,
      // color: colorPrimaire,
      child: Row(
        children: [
          SizedBox(width: 5,),
          Container(
            height: size.height * .05,
            // width: size.height * .05,
            child: Center(
                child: Text(
              'Actu221',
              style: TextStyle(color: black, fontSize: 8),
            )),
          ),
          Container(
            height: size.height * .05,
            // width: size.width * .5,
            child: Center(
              child: Text(
                ' / Mamadou Diouf',
                style: TextStyle(color: black, fontSize: 8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
