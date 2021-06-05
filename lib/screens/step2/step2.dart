import 'package:flutter/material.dart';
import 'package:friday_coins/components/button.dart';
import 'package:friday_coins/enum/constants.dart';

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'A little bit more',
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
                      TextSpan(text: '2'),
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
              height: 50.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'PHONE NUMBER',
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
                  hintText: 'ZIP CODE',
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
                  hintText: 'GENDER',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF718096),
                      letterSpacing: 1.5)),
            ),
            SizedBox(
              height: 45.0,
            ),
            Row(
              children: [
                Text(
                  'Did you receive My TRN App as a benefit through an\nemployer, organization or group ?',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF718096),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 22.0,
            ),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 14,
                      width: 14,
                      child: Checkbox(
                        activeColor: Color(0xFF5EADFF),
                        value: isYesChecked,
                        onChanged: (value) {
                          setState(() {
                            isYesChecked = !isYesChecked;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Yes',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF718096),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 43.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 14,
                      width: 14,
                      child: Checkbox(
                        activeColor: Color(0xFF5EADFF),
                        value: isNoChecked,
                        onChanged: (value) {
                          setState(() {
                            isNoChecked = !isNoChecked;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'No',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF718096),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 96.0,
            ),
            DefaultButton(
              text: 'Next',
              press: () {
                Navigator.pushNamed(context, '/completeprofile');
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/signin');
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF718096),
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Already a user ? '),
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF5EADFF)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
