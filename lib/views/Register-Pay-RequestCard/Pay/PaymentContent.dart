import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentContent extends StatefulWidget {
  const PaymentContent({Key? key}) : super(key: key);

  @override
  _PaymentContentState createState() => _PaymentContentState();
}

class _PaymentContentState extends State<PaymentContent> {
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
        child: Column(
          children: [
            Container(
              width: 285,
              height: 30,
              margin: EdgeInsets.only(top: 15,bottom: 50),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Logo2.png'),
                ),
              ),
            ),
            Container(
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
                width: width,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.only(right: 10,top: 50),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 15),
              child: Column(
                children: [
                  Text(
                    "Initial payment amount is Rs.300.00",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    initialValue: "300.00",
                    decoration: InputDecoration(
                      enabled: false,
                      labelText: "Amount",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    maxLength: 16,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      labelText: "Card Number",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  DateTimeFormField(
                    decoration:  const InputDecoration(
                      labelText: "Expire Date",
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                      errorStyle: TextStyle(
                        color: Colors.redAccent,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      suffixIcon: Icon(Icons.event_note),
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    firstDate: DateTime.now().add(const Duration(days: 10)),
                    initialDate: DateTime.now().add(const Duration(days: 10)),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (DateTime? e) =>
                    (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                  SizedBox(height: 20),
                  TextField(
                    maxLength: 3,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      labelText: "CVC",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                            'Pay Amount',
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
          ],
        ),
      ),
    ];
  }
}
