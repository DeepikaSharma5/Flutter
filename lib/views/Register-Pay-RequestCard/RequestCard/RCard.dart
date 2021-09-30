import 'package:cssc_project/views/HeaderNavigation/HeaderNavigation.dart';
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Column(
                  children: [Headernavigation(),CardContent()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
