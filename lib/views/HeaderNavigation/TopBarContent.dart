import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBarContent extends StatefulWidget {
  const TopBarContent({Key? key}) : super(key: key);

  @override
  _TopBarContentState createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.black54.withOpacity(0.5),
      child: Padding(
        padding: EdgeInsets.only(left: 0, right: 20, top: 20, bottom: 20),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: screenSize.width / 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset(
                  'assets/images/Logo2.png',
                  width: 250,
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HOME",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      child: Container(
                        height: 0,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              Text(
                "|",
                style: TextStyle(height: -1),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "SCHEDULE",
                      style: TextStyle(
                        color: _isHovering[0] ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 0,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              Text(
                "|",
                style: TextStyle(height: -1),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "BOOKINGS",
                      style: TextStyle(
                        color: _isHovering[1] ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 0,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              Text(
                "|",
                style: TextStyle(height: -1),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "ABOUT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      child: Container(
                        height: 0,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              Text(
                "|",
                style: TextStyle(height: -1),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "CONTACT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      child: Container(
                        height: 0,
                        width: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              Text(
                "|",
                style: TextStyle(height: -1),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "CARD",
                      style: TextStyle(
                        color: _isHovering[2] ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 0,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              Text(
                "|",
                style: TextStyle(height: -1),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "LOGOUT",
                      style: TextStyle(
                        color: _isHovering[3] ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 0,
                        width: 20,
                        color: Color(0xFF051441),
                      ),
                    ),
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
