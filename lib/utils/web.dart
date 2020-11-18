import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

const base_url =
    'https://apiactu221.telectronsenegal.com/api/v1/';
    
const base_url_fichier = 'https://actu221.telectronsenegal.com/'; 

verifIfApiIsAvailable() async {
  return http.get(base_url).then(((req) async {
    print(req.statusCode);
    if (req.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }));
}

class UtilsHttp {
  static postByIssa(endPoint, body) {
    String url = base_url + endPoint;

    Dio dio = new Dio();
    return SharedPreferences.getInstance().then((prefs) {
      return dio
          .post(url,
              data: body,
              options: Options(contentType: "application/json", headers: {
                HttpHeaders.ACCEPT: "application/json",
                HttpHeaders.AUTHORIZATION: "Bearer ${prefs.getString('token')}"
              }))
          .then((success) => success);
    });
  }

  static getByIssa(endPoint) {
    String url = base_url + endPoint;

    Dio dio = new Dio();
    return SharedPreferences.getInstance().then((prefs) {
      return dio
          .get(url,
              options: Options(contentType: "application/json", headers: {
                HttpHeaders.ACCEPT: "application/json",
                HttpHeaders.AUTHORIZATION: "Bearer ${prefs.getString('token')}"
              }))
          .then((success) => success);
    });
  }

  static getByIssa2(endPoint) {
    String url = base_url + endPoint;
    return http.get(url).then((success) => success);
  }
}
