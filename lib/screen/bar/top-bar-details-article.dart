import 'package:actu221_mobile/main.dart';
import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:actu221_mobile/screen/home.dart';

class TopBarDetailsArticle extends StatelessWidget {
  final GlobalKey<ScaffoldState> scafoldKey;

  const TopBarDetailsArticle({Key key, this.scafoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .15,
                // color: colorPrimaire,
                child: IconButton(
                  onPressed: () => appState.setState(() {
                    appState.screenApp = 1;
                  }),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: black,
                  ),
                ),
              ),
              InkWell(
                onTap: () => appState.setState(() {
                  appState.screenApp = 1;
                }),
                child: Container(
                  width: size.width * .4,
                  height: size.height * .07,
                  // color: colorPrimaire,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo_solgan.png'),
                          fit: BoxFit.contain)),
                ),
              ),
              Container(
                width: size.width * .15,
                // color: colorPrimaire,
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.ios_share,
                    color: black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
