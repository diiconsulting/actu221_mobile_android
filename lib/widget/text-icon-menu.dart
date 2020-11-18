import 'package:actu221_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class TextIconMenuHambouger extends StatelessWidget {
  final IconData icon;

  final String titre;

  const TextIconMenuHambouger({Key key, this.icon, this.titre})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .3,
      height: size.height * .07,
      // color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Container(
              width: size.width * .05,
              child: Icon(
                icon,
                size: 32,
                color: black,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              titre,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: black, fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
