import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuDrawer.dart';
import 'ResponsiveWidget.dart';
import 'TopBarContent.dart';

class Headernavigation extends StatefulWidget {
  const Headernavigation({Key? key}) : super(key: key);

  @override
  _HeadernavigationState createState() => _HeadernavigationState();
}

class _HeadernavigationState extends State<Headernavigation> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context) ?
      AppBar(
        iconTheme: IconThemeData(
          color: Color(0xfffeba06),
        ),
        backgroundColor: Colors.black54,
        elevation: 0,
        centerTitle: true,
        title:  Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            'assets/images/Logo2.png',
            width: 250,
          ),
        ),
      ):
      PreferredSize(
        preferredSize: Size(
          screenSize.width,
          70,
        ),
        child: TopBarContent(),
      ),
      drawer: MenuDrawer(),
    );
  }
}
