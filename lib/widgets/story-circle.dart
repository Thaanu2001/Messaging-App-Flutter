import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class StoryCircle extends StatelessWidget {
  final String userImageLocation;
  final String userName;
  const StoryCircle(
      {Key? key, required this.userImageLocation, required this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: (kIsWeb) ? 8.5 : 11, right: (kIsWeb) ? 8.5 : 11),
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xffff6b35),
              width: 1.8,
            ),
          ),
          child: Container(
            height: 50,
            child: ClipOval(
              child: Image.asset(this.userImageLocation),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            this.userName,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
