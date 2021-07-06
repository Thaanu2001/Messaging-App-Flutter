import 'package:flutter/material.dart';
import 'package:messaging_app_flutter/sections/users-section.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: UsersSection(),
      ),
    );
  }
}
