import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:login/widgets/button_widget.dart';
import 'package:login/widgets/text_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color facebookBlue = Color(0xFF1877F2);
    Color nextButtonColor = Color(0xFF7FB9C1);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size(200, 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.0),
              child: TextWidget(
                  value: "CLOSE",
                  fontWeight: FontWeight.bold,
                  fontSiz: 10,
                  textColor: Colors.black54),
            ),
          ),
        ),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {},
              ),
              TextWidget(
                  value: "Sign In",
                  fontWeight: FontWeight.bold,
                  fontSiz: 22,
                  textColor: Colors.black54),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: TextWidget(
                  value: "SKIP FOR NOW",
                  fontWeight: FontWeight.bold,
                  fontSiz: 10,
                  textColor: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        actions: [],
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          transform: Matrix4.translationValues(0, 60.0, 0),
          child: Align(
              alignment: Alignment.center,
              child: TextWidget(
                  value: "👋Welcome to Beamo",
                  fontWeight: FontWeight.bold,
                  fontSiz: 25,
                  textColor: Colors.black54)),
        ),
        Column(
          children: [
            ButtonWidget(
              text: "Login With Mail",
              onPressed: () {},
              icon: Icons.mail,
              textColor: Colors.black54,
              borderColor: nextButtonColor,
              bgColor: Colors.white,
            ),
            SizedBox(height: 16),
            ButtonWidget(
                onPressed: () {},
                icon: Icons.g_mobiledata,
                text: 'Login with Google',
                textColor: Colors.black54,
                borderColor: nextButtonColor,
                bgColor: Colors.white),
            SizedBox(height: 16),
            ButtonWidget(
              onPressed: () {},
              icon: (Icons.facebook),
              text: 'Login with facebook',
              bgColor: facebookBlue,
              textColor: Colors.white,
              borderColor: facebookBlue,
            ),
          ],
        ),
        Container(
          transform: Matrix4.translationValues(0, 10.0, 0),
          width: double.infinity,
          child: ButtonWidget(
            onPressed: () {},
            text: "Next",
            icon: Icons.arrow_forward,
            bgColor: nextButtonColor,
            textColor: Colors.white,
            borderColor: nextButtonColor,
          ),
        ),
      ]),
    );
  }
}
