import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final bool sentMessage;
  final String message;
  const Message({Key? key, required this.sentMessage, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: (sentMessage) ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 8, 20, 8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: (sentMessage) ? Color(0xff196bde) : Colors.grey[350],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: (sentMessage) ? Radius.circular(0) : Radius.circular(15),
            bottomLeft:
                (sentMessage) ? Radius.circular(15) : Radius.circular(0),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Text(
          this.message,
          style: TextStyle(
              color: (sentMessage) ? Colors.white : Colors.black,
              fontSize: (kIsWeb) ? 16 : 18),
        ),
      ),
    );
  }
}
