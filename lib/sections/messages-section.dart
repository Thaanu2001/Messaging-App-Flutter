import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:messaging_app_flutter/screens/user-details-screen.dart';
import 'package:messaging_app_flutter/transitions/slide-left-transition.dart';
import 'package:messaging_app_flutter/widgets/message.dart';
import 'package:messaging_app_flutter/widgets/send-message-bar.dart';

class MessagesSection extends StatelessWidget {
  const MessagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Color(0xff196bde), width: (kIsWeb) ? 0.6 : 0),
          right:
              BorderSide(color: Color(0xff196bde), width: (kIsWeb) ? 0.6 : 0),
        ),
        color: Color(0xffe6f2ff),
      ),
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
                //* User image
                Container(
                  height: 40,
                  margin: EdgeInsets.only(left: 20, right: 15),
                  child: ClipOval(
                    child: Image.asset('lib/assets/users/user-3.jpg'),
                  ),
                ),
                //* User name and status
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Shelley Robertson',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    Container(
                      child: Text(
                        'Online Now',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
                //* Details Button
                Flexible(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xffe6f2ff),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                            (kIsWeb &&
                                    MediaQuery.of(context).size.width >= 1100)
                                ? Icons.call
                                : Icons.more_horiz,
                            color: Colors.grey[600]),
                      ),
                      onTap: () {
                        if (!kIsWeb ||
                            MediaQuery.of(context).size.width <= 880) {
                          Route route =
                              SlideLeftTransition(widget: UserDetailsScreen());
                          Navigator.push(context, route);
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Message(
            sentMessage: false,
            message: 'You doing anything tommorrow? 🤔',
          ),
          Message(
            sentMessage: true,
            message: 'Not really, Probably just going to be lazy 😴',
          ),
          Message(
            sentMessage: false,
            message:
                'Then let me cook you stuff \nand you can be lazy while I do it 😉',
          ),
          Message(
            sentMessage: true,
            message: 'That sounds like an awersome plan 😍',
          ),
          Message(
            sentMessage: false,
            message: 'Really? 😅🥳',
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Align(
                alignment: Alignment.bottomCenter, child: SendMessageBar()),
          )
        ],
      ),
    );
  }
}
