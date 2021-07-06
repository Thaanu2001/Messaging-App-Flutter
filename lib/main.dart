import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:messaging_app_flutter/screens/mobile-view.dart';
import 'package:messaging_app_flutter/screens/web-view.dart';

void main() {
  runApp(MessagingApp());
}

class MessagingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messaging App',
      //theme: ThemeData(fontFamily: 'Poppins'),
      home: (kIsWeb) ? WebView() : MobileView(),
    );
  }
}
