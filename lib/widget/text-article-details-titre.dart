import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class TextArtticleDetailsTitre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * .18,
      width: size.width,
      // color: colorPrimaire,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Text('Des troupes australiennes ont <<tué illégalement>> 39 Afghans' , textAlign: TextAlign.start,style: TextStyle(
            fontWeight: FontWeight.w200,
            color: black,
            fontSize: 32
          ),),
        ),
      ),
    );
  }
}
