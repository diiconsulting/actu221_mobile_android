

import 'package:actu221_mobile/model/tag.dart';
import 'package:flutter/material.dart';

class Categorie {
  
  int id ;

  String libelle ;

  List<Tag> tags ;

  Categorie({
    @required this.id ,
    @required this.libelle,
    @required this.tags
  });

}