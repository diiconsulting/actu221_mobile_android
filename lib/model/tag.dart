
import 'package:actu221_mobile/model/article.dart';
import 'package:flutter/material.dart';

class Tag {
  
  int id ;

  String libelle ;

  List<Article> articles ;

  Tag({
    @required this.id,
    @required this.libelle,
    @required this.articles
  });

}