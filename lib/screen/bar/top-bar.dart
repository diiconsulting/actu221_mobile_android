import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scafoldKey;

  const TopBar({Key key, this.scafoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .15,
          // color: colorPrimaire,
          child: IconButton(
            onPressed: () => scafoldKey.currentState.openDrawer(),
            icon: Icon(
              Icons.menu,
              color: black,
            ),
          ),
        ),
        Container(
          width: size.width * .4,
          height: size.height * .07,
          // color: colorPrimaire,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo_solgan.png'),
                  fit: BoxFit.contain)),
        ),
        Container(
          width: size.width * .15,
          // color: colorPrimaire,
          child: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.bookmark_border,
              color: black,
            ),
          ),
        ),
      ],
    );
  }
}
