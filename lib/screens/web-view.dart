import 'package:flutter/material.dart';
import 'package:messaging_app_flutter/sections/users-section.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: UsersSection(),
            ),
            Flexible(
              flex: 5,
              child: Container(),
            ),
            Flexible(
              flex: 3,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
