import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:friday_coins/components/button.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscurePass = false;
  bool _switchVal = false;
  @override
  Widget build(BuildContext context) {
    final Color _activeColor = Color(0xFF662C92);
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
                  'Hello,\nWelcome Back',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF333333)),
                )
              ],
            ),
            SizedBox(
              height: 120.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'USERNAME',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF718096),
                      letterSpacing: 1.5)),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Username',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5EADFF)),
                )
              ],
            ),
            TextField(
              obscureText: _obscurePass,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePass = !_obscurePass;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                  hintText: 'PASSWORD',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF718096),
                      letterSpacing: 1.5)),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5EADFF)),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 0.75,
                  child: CupertinoSwitch(
                    activeColor: _activeColor,
                    value: _switchVal,
                    onChanged: (val) {
                      setState(() {
                        _switchVal = val;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Remember Me',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF718096)),
                ),
              ],
            ),
            SizedBox(
              height: 155.75,
            ),
            DefaultButton(
                  text: 'Log In',
                  press: (){},
                )
          ],
        ),
      ),
    );
  }
}
