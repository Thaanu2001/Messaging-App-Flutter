import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MessageCard extends StatelessWidget {
  final bool isNewMsg;
  final bool isSelected;
  final String userName;
  final String userImageLocation;
  final String notificationLabel;
  final String time;
  final String message;
  const MessageCard(
      {Key? key,
      required this.isNewMsg,
      required this.userName,
      required this.userImageLocation,
      required this.notificationLabel,
      required this.time,
      required this.message,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* Contact Card
    return Container(
      margin:
          (isSelected && kIsWeb) ? EdgeInsets.only(left: 10, right: 10) : null,
      decoration: BoxDecoration(
        color: (isSelected && kIsWeb) ? Color(0xaacce4fd) : null,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: (kIsWeb)
          ? EdgeInsets.fromLTRB((isSelected && kIsWeb) ? 10 : 20, 20,
              (isSelected && kIsWeb) ? 10 : 20, 20)
          : EdgeInsets.fromLTRB((isSelected && kIsWeb) ? 20 : 30, 20,
              (isSelected && kIsWeb) ? 20 : 30, 20),
      child: Row(
        children: [
          //* User Photo
          Container(
            height: 60,
            child: ClipOval(
              child: Image.asset(this.userImageLocation),
            ),
          ),
          SizedBox(width: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* User name
              Text(
                this.userName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 3),
              //* User Message
              Text(
                this.message,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: (isNewMsg) ? FontWeight.w600 : FontWeight.w500,
                    color: (isNewMsg) ? Color(0xff196bde) : Colors.grey),
              )
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  //* Notification Time
                  Text(
                    this.time,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 2),
                  //* Notification Badge
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: (isNewMsg) ? Color(0xff196bde) : null,
                        shape: BoxShape.circle),
                    child: Text(
                      (isNewMsg) ? this.notificationLabel : '',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
