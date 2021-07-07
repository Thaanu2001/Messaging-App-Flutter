import 'package:flutter/material.dart';

class SendMessageBar extends StatelessWidget {
  const SendMessageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      color: Color(0xffcce4fd),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            height: 38,
            width: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffe6f2ff),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.add, color: Colors.grey[600]),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              padding: EdgeInsets.only(left: 20),
              height: 38,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Message',
                  style: TextStyle(color: Colors.grey[400], fontSize: 18)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 38,
            width: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff196bde),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.send,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
