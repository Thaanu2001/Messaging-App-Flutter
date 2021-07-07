import 'package:flutter/material.dart';
import 'package:messaging_app_flutter/responsive.dart';
import 'package:messaging_app_flutter/sections/messages-section.dart';
import 'package:messaging_app_flutter/sections/users-section.dart';

class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // child: Row(
          //   children: [
          //     Flexible(
          //       flex: 3,
          //       child: UsersSection(),
          //     ),
          //     Flexible(
          //       flex: 5,
          //       child: MessagesSection(),
          //     ),
          //     Flexible(
          //       flex: 3,
          //       child: Container(),
          //     )
          //   ],
          // ),
          child: Responsive(
        mobile: UsersSection(),
        tablet: Row(
          children: [
            Flexible(
              flex: 3,
              child: UsersSection(),
            ),
            Flexible(
              flex: 5,
              child: MessagesSection(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Flexible(
              flex: 4,
              child: UsersSection(),
            ),
            Flexible(
              flex: 6,
              child: MessagesSection(),
            ),
            Flexible(
              flex: 3,
              child: Container(),
            )
          ],
        ),
      )),
    );
  }
}
