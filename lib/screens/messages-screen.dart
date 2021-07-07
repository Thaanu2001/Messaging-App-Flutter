import 'package:flutter/material.dart';
import 'package:messaging_app_flutter/sections/messages-section.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MessagesSection(),
    );
  }
}
