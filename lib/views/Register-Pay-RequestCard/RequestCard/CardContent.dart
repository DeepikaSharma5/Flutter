import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardContent extends StatefulWidget {
  const CardContent({Key? key}) : super(key: key);

  @override
  _CardContentState createState() => _CardContentState();
}

class _CardContentState extends State<CardContent> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width / 2),
        );
      } else {
        return Column(
          children: pageChildren(constraints.biggest.width),
        );
      }
    });
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: 100,
        ),
        height: 400,
        child: Card(
          shadowColor: Colors.yellow.shade200,
          elevation: 10,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0),
                  ],
                ),
                child: Image.asset(
                  'assets/images/CreditCard.png',
                  width: width / 2,
                ),
              ),
              Container(
                width: 285,
                margin: EdgeInsets.only(top: 15, bottom: 50),
                alignment: Alignment.centerRight,
                child: Text(
                  "You can request a digital card form here and start using it for any bus travelling service",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 130,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Request Card',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20),
      Container(
        margin: EdgeInsets.only(
          top: 100,
        ),
        height: 400,
        child: Card(
          shadowColor: Colors.yellow.shade200,
          elevation: 10,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0),
                  ],
                ),
                child: Image.asset(
                  'assets/images/CreditCard.png',
                  width: width / 2,
                ),
              ),
              Container(
                width: 285,
                margin: EdgeInsets.only(top: 15, bottom: 50),
                alignment: Alignment.centerRight,
                child: Text(
                  "You can top-up yore digital card here using credit card or you can use physical top-up centers.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 130,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Top-Up Card',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
