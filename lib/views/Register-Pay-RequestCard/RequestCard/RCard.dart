import 'package:cssc_project/views/HeaderNavigation/HeaderNavigation.dart';
import 'package:cssc_project/views/HeaderNavigation/MenuDrawer.dart';
import 'package:cssc_project/views/Register-Pay-RequestCard/Pay/Payment.dart';
import 'package:cssc_project/views/Register-Pay-RequestCard/RequestCard/CardContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RCard extends StatefulWidget {
  const RCard({Key? key}) : super(key: key);

  @override
  _RCardState createState() => _RCardState();
}

class _RCardState extends State<RCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xfffeba06),
        ),
        backgroundColor: Colors.black54,
        elevation: 0,
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            'assets/images/Logo2.png',
            width: 250,
          ),
        ),
      ), //Headernavigation(),
      drawer: MenuDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Column(
                  children: [
                    //Headernavigation(),
                    CardContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
