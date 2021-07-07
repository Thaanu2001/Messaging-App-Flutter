import 'package:flutter/material.dart';
import 'package:messaging_app_flutter/sections/user-details-section.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserDetailsSection(),
    );
  }
}
