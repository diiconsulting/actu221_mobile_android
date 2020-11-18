import 'package:actu221_mobile/widget/text-icon-menu.dart';
import 'package:actu221_mobile/widget/text-menu.dart';
import 'package:flutter/material.dart';

class CardMenuHambouger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          height: size.height * .07,
          // // width: size.width * .7,
          // color: Colors.blueGrey,
          // margin: EdgeInsets.only(bottom:16.0 , top: 16.0),
          // child: Image.asset('assets/images/logo221_rouge.png' , fit: BoxFit.cover,),
          decoration: BoxDecoration(
              // color: Colors.blueGrey,
              image: DecorationImage(
                  image: AssetImage('assets/images/logo_solgan.png'),
                  fit: BoxFit.contain)),
        ),
        TextIconMenuHambouger(
          titre: 'Langues',
          icon: Icons.language,
        ),
        TextIconMenuHambouger(
          titre: 'Lire PLus Tard',
          icon: Icons.bookmark_border,
        ),
        Divider(),
        TextMenuHambouger(
          titre: 'Politique',
        ),
        TextMenuHambouger(
          titre: 'Économique',
        ),
        TextMenuHambouger(
          titre: 'Sports',
        ),
        TextMenuHambouger(
          titre: 'Culture',
        ),
        TextMenuHambouger(
          titre: 'Decouverte',
        ),
        TextMenuHambouger(
          titre: 'Scandales',
        ),
        TextMenuHambouger(
          titre: 'Sciences',
        ),
        TextMenuHambouger(
          titre: 'Technologies',
        ),
        TextMenuHambouger(
          titre: 'Voyage',
        ),
        TextMenuHambouger(
          titre: 'Afrique',
        ),
        TextMenuHambouger(
          titre: 'Amerique',
        ),
        TextMenuHambouger(
          titre: 'Asie & Pacifique',
        ),
        TextMenuHambouger(
          titre: 'Moyen-Orient',
        ),
        Divider(),
        TextIconMenuHambouger(
          titre: 'Nous écrire',
          icon: Icons.messenger,
        ),
        TextIconMenuHambouger(
          titre: 'Parametres',
          icon: Icons.settings,
        ),
      ],
    );
  }
}
