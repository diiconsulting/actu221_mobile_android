
import 'package:actu221_mobile/screen/home.dart';
import 'package:actu221_mobile/widget/card-btn-top-bar.dart';
import 'package:flutter/material.dart';

class TopBarList extends StatefulWidget {
  @override
  _TopBarListState createState() => _TopBarListState();
}

class _TopBarListState extends State<TopBarList> {

  ScrollController _controller = ScrollController();

    Size size;


  @override
  void initState() { 
    super.initState();
    _controller.addListener(() {
      if ( 0 < _controller.position.pixels && _controller.position.pixels < size.width * .3) {
        homeScreenState.setState(() {
            homeScreenState.ala_une = false;
        }); 
      } 
    });
  }


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      physics: BouncingScrollPhysics(),
      children: [
        BtnTopBar(titre: 'A LA UNE', isActive: homeScreenState.ala_une,),
        BtnTopBar(titre: 'politique'.toUpperCase(), isActive: homeScreenState.politique,),
        BtnTopBar(titre: 'economique'.toUpperCase(), isActive: homeScreenState.ecomique,),
        BtnTopBar(titre: 'société'.toUpperCase(), isActive: homeScreenState.societe,),
        BtnTopBar(titre: 'sports'.toUpperCase(), isActive: homeScreenState.sport,),
        ],
    );
  }
}
