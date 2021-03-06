import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:actu221_mobile/screen/home.dart';

class TopBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scafoldKey;

  const TopBar({Key key, this.scafoldKey}) : super(key: key);
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
                  onPressed: () => scafoldKey.currentState.openDrawer(),
                  icon: Icon(
                    Icons.menu,
                    color: black,
                  ),
                ),
              ),
              InkWell(
                onTap: () => homeScreenState.setState(() {
                  homeScreenState.initValue();
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
                  onPressed: () {
                    homeScreenState.setState(() {
                      homeScreenState.listeArticlePlusTardShow = true;
                      homeScreenState.topBar = true;
                    });
                  },
                  icon: Icon(
                    Icons.bookmark_border,
                    color: black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 5,
          top: 2,
          child: Container(
            height: 25,
            width: 25,
            child: Center(
              child: Text(
                '${homeScreenState.listeArticlePlusTard.length}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.bold, color: white),
              ),
            ),
            decoration: BoxDecoration(
                color: colorPrimaire, borderRadius: BorderRadius.circular(30)),
          ),
        )
      ],
    );
  }
}
