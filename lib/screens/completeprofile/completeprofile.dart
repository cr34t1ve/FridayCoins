import 'package:flutter/material.dart';
import 'package:friday_coins/components/button.dart';

class CompleteProfile extends StatefulWidget {
  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  bool _obscurePass = false;
  bool _obscureConfirmPass = false;
  IconData passwordIcon = Icons.visibility_outlined;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
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
                  'Complete Profile',
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
                      TextSpan(text: '3'),
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
                  hintText: 'USERNAME',
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
              obscureText: _obscurePass,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePass = !_obscurePass;
                      });
                    },
                    icon: Icon(
                      _obscurePass
                    ?Icons.visibility_off_outlined
                    : Icons.visibility_outlined
                    )
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
              height: 40.0,
            ),
            TextField(
              obscureText: _obscureConfirmPass,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPass = !_obscureConfirmPass;
                      });
                    },
                    icon: Icon(
                      _obscureConfirmPass
                    ?Icons.visibility_off_outlined
                    : Icons.visibility_outlined
                    )
                  ),
                  hintText: 'CONFIRM PASSWORD',
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
                  'By clicking Create account, you are agreeing to',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF718096),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF718096),
                    ),
                    children: <TextSpan>[
                      TextSpan(text: '  •  The '),
                      TextSpan(
                        text: 'Terms of Service ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF5EADFF)),
                      ),
                      TextSpan(text: 'and '),
                      TextSpan(
                        text: 'Privacy Policy',
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
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF718096),
                    ),
                    children: <TextSpan>[
                      TextSpan(text: '  •   '),
                      TextSpan(
                        text: 'Informed Consent ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF5EADFF)),
                      ),
                      TextSpan(text: 'and '),
                      TextSpan(
                        text: 'Consent to Treatment',
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
            ),
            SizedBox(
              height: 96.0,
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
            ),
          ],
        ),
      ),
    );
  }
}
