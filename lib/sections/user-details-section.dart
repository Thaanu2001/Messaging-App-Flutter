import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class UserDetailsSection extends StatelessWidget {
  const UserDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* Header Section
          Container(
            padding: (kIsWeb)
                ? EdgeInsets.fromLTRB(
                    (MediaQuery.of(context).size.width <= 880) ? 20 : 0,
                    10,
                    20,
                    10)
                : EdgeInsets.fromLTRB(30, (Platform.isIOS) ? 50 : 35, 30, 10),
            color: Color(0xffcce4fd),
            height: (kIsWeb) ? 60 : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //* Back button
                if (!kIsWeb || MediaQuery.of(context).size.width <= 880)
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xffe6f2ff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.arrow_back_ios_new_rounded,
                          color: Colors.grey[600]),
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                SizedBox(width: 15),
                //* User name and status
                Container(
                  child: Text(
                    'Contact Details',
                    style: TextStyle(
                      fontSize: (kIsWeb) ? 18 : 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.topCenter,
            height: 140,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: ClipOval(
              child: Image.asset('lib/assets/users/user-3.jpg'),
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Shelley Robertson',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Online Now',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffcce4fd),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.chat_bubble, color: Color(0xff196bde)),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffcce4fd),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.call, color: Color(0xff196bde)),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffcce4fd),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.video_call,
                        color: Color(0xff196bde), size: 30),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            // height: 50,
            width: double.infinity,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xffcce4fd),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
                  child: Text(
                    'Phone',
                    style: TextStyle(
                      color: Color(0xff196bde),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    '+94 71 234 5678',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: double.infinity,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xffcce4fd),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Text(
                'Share Contact',
                style: TextStyle(
                  color: Color(0xff196bde),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            width: double.infinity,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xffcce4fd),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Text(
                'Starred Messages',
                style: TextStyle(
                  color: Color(0xff196bde),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
