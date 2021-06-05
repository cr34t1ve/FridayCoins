import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 90.0,
            ),
            Row(
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF333333)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Let’s get started',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF333333)),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontFamily: 'Roboto',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF662C92),
                      ),
                    children: <TextSpan>[
                      TextSpan(text: '1'),
                      TextSpan(
                          text: '/3',
                          style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF718096),
                      ),
                              ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'FIRST NAME',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF718096),
                      letterSpacing: 1.5)),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'LAST NAME',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF718096),
                      letterSpacing: 1.5)),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'EMAIL',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF718096),
                      letterSpacing: 1.5
                    )
                  ),
            ),
            SizedBox(
              height: 55.0,
            ),
            Row(
              children: [
                Text(
                  'DATE OF BIRTH',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF718096),
                      letterSpacing: 1.5
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}