
import 'package:flutter/material.dart';

class TextArticleDetailsBody extends StatelessWidget {
  String text =
      'Le ministre de la Pêche et de l’Economie maritime, Alioune Ndoye, a lancé jeudi les travaux de dragage et de balisage de la brèche de Saint-Louis (nord), qui a coûté la vie à plusieurs personnes, des pêcheurs pour la plupart, a constaté l’APS.INFRASTRUCTURES – La brèche avait été ouverte en 2003, dans le cadre de la lutte contre les inondations. Elle a engendré de nombreux accidents maritimes.Alioune Ndoye a rendu hommage aux personnes décédées dans ces accidents, avant de lancer officiellement les travaux de dragage et de balisage, en présence de plusieurs personnalités dont le maire de Saint-Louis, Mansour Faye, des autorités administratives et coutumières, des pêcheurs aussi.« Aujourd’hui, avec l’aide des techniciens et experts, l’Etat a pris toutes les dispositions nécessaires pour trouver une solution durable à la brèche », a assuré M. Ndoye.Les études préalables aux travaux de dragage de la brèche de Saint-Louis ont été faites avec l’aide des Pays-Bas, selon le ministre de la Pêche et de l’Economie maritime.Les travaux vont coûter sept milliards de francs CFA, selon Alioune Ndoye. « Cela a été fait dans une démarche participative », a-t-il ajouté, espérant que le futur ouvrage permettra de « préserver la vie des braves pêcheurs »Il a remis quatre embarcations en fibre de verre, ainsi que des moteurs, à des pêcheurs de Louga (nord) et Saint-Louis. Les autres régions bénéficieront de dons similaires, a promis M. Ndoye..';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * .5,
      width: size.width,
      // color: colorPrimaire,
      child: Padding(
        padding: const EdgeInsets.only(top:16.0, left: 8.0),
        child: Text(text , textAlign: TextAlign.start,style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.w300,
          letterSpacing: 1.2,
          wordSpacing: 1.5
        ),),
      ),
    );
  }
}
