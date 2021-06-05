import 'package:flutter/material.dart';
import 'package:friday_coins/components/button.dart';
import 'package:friday_coins/enum/constants.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _currentSelectedValue;
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
                      letterSpacing: 1.5)),
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
                      letterSpacing: 1.5),
                )
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                  hint: Text(
                    'Month',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF718096),
                        letterSpacing: 1.5),
                  ),
                  value: _currentSelectedValue,
                  isDense: true,
                  onChanged: (String newValue) {
                    setState(() {
                      _currentSelectedValue = newValue;
                      // state.didChange(newValue);
                    });
                  },
                  items: months.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                  hint: Text(
                    'Day         ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF718096),
                        letterSpacing: 1.5),
                  ),
                  value: _currentSelectedValue,
                  isDense: true,
                  onChanged: (String newValue) {
                    setState(() {
                      _currentSelectedValue = newValue;
                      // state.didChange(newValue);
                    });
                  },
                  items: days.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                  hint: Text(
                    'Year     ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF718096),
                        letterSpacing: 1.5),
                  ),
                  value: _currentSelectedValue,
                  isDense: true,
                  onChanged: (String newValue) {
                    setState(() {
                      _currentSelectedValue = newValue;
                      // state.didChange(newValue);
                    });
                  },
                  items: years.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: 95.0,
            ),
            DefaultButton(
              text: 'Next',
              press: () {},
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
