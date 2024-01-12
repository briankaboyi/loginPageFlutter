import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/widgets/text_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        bottom: const PreferredSize(
          preferredSize: Size(200, 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: TextWidget(
                  value: "close", fontWeight: FontWeight.w300, fontSiz: 14),
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        ),
        title: TextWidget(
            value: "Sign In", fontWeight: FontWeight.w300, fontSiz: 13),
        actions: [
          TextWidget(
              value: "skip for now", fontWeight: FontWeight.w300, fontSiz: 16),
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Next"),
      ),
    );
  }
}
