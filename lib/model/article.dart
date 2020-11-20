

import 'package:actu221_mobile/model/user.dart';
import 'package:actu221_mobile/utils/web.dart';
import 'package:flutter/material.dart';

class Article {
  String id;

  String tag;

  String titre;

  String body;

  String urlPhoto;

  bool isAlaUne;

  int positionUne;

  User user;

  bool isReadAfter;

  List<String> allFichier = [];

  Article(
      {@required this.id,
      @required this.titre,
      @required this.body,
      @required this.isAlaUne,
      @required this.positionUne,
      @required this.tag,
      @required this.urlPhoto,
      this.allFichier,
      this.isReadAfter = false,
      this.user});

  static fromJson(Map<dynamic, dynamic> liste) {
    List<Article> liste_article = [];

    for (var item in liste['data']) {
      // print(item);
      List<String> tousLesFichier = [];

      for (var item in item['attributes']['photos']) {
        tousLesFichier.add(base_url_fichier + item);
      }

      liste_article.add(Article(
          id: item['id'],
          titre: item['attributes']['libelle'],
          body: item['attributes']['description'],
          isAlaUne: item['attributes']['isUne'] == 1,
          positionUne: item['attributes']['position'],
          tag: item['attributes']['mot']['libelle'],
          urlPhoto: base_url_fichier + item['attributes']['photo'],
          allFichier: tousLesFichier,
          user: User(
              usermane: item['attributes']['author']['name'],
              email: item['attributes']['author']['email'],
              facebook_url: '',
              instagram: '',
              avatar: '',
              pasword: '',
              tweeter: '',
              titre: '')));
    }
    return liste_article;
  }

}
