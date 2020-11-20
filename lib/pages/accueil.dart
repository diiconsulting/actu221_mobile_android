import 'package:actu221_mobile/model/article.dart';
import 'package:actu221_mobile/screen/home.dart';
import 'package:actu221_mobile/utils/get-all-piese-of-article.dart';
import 'package:flutter/material.dart';

class AcceuilPage extends StatefulWidget {
  final List<Article> articles;

  const AcceuilPage({Key key, this.articles}) : super(key: key);

  @override
  _AcceuilPageState createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  final _controller = ScrollController();
  Size size;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.position.pixels);
      if (_controller.position.pixels > size.height * .45) {
        homeScreenState.setState(() {
          homeScreenState.topBar = true;
        });
      }
      if (_controller.position.pixels < size.height * .45) {
        homeScreenState.setState(() {
          homeScreenState.topBar = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return ListView(
      physics: BouncingScrollPhysics(),
      controller: _controller,
      children: getAllPieceOfArticle(articles:widget.articles , size: size ),
    );
  }

  
}
