import 'package:flutter/material.dart';

class User {
  String usermane ;
  String titre ;
  String email ;
  String pasword ;
  String facebook_url ;
  String instagram ;
  String tweeter ;
  String avatar ;

  User({
    @required this.usermane,

    @required this.email,
    @required this.facebook_url ,
    @required this.instagram ,
    @required this.avatar ,
    @required this.pasword ,
    @required this.tweeter ,
    @required this.titre
  });
}