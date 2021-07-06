import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:messaging_app_flutter/widgets/message-card.dart';
import 'package:messaging_app_flutter/widgets/story-circle.dart';

class UsersSection extends StatelessWidget {
  const UsersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* Header Section
          Container(
            padding: (kIsWeb)
                ? EdgeInsets.fromLTRB(20, 10, 20, 10)
                : EdgeInsets.fromLTRB(30, 50, 30, 10),
            color: Color(0xffcce4fd),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  child: ClipOval(
                    child: Image.asset('lib/assets/users/header-img.jpeg'),
                  ),
                ),
                Container(
                  child: Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.search, color: Colors.grey[600]),
                )
              ],
            ),
          ),
          //* Story Section
          Container(
            color: Color(0xffe8f3fe),
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: (kIsWeb)
                      ? EdgeInsets.fromLTRB(20, 15, 20, 10)
                      : EdgeInsets.fromLTRB(30, 15, 30, 10),
                  // padding: EdgeInsets.fromLTRB(0, 5, 0, 8),
                  child: Text(
                    'Stories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: (kIsWeb) ? 10 : 20),
                        //* Story Users
                        StoryCircle(
                          userName: 'Hector',
                          userImageLocation: 'lib/assets/users/user-1.jpg',
                        ),
                        StoryCircle(
                          userName: 'Allan',
                          userImageLocation: 'lib/assets/users/user-2.jpg',
                        ),
                        StoryCircle(
                          userName: 'Sonia',
                          userImageLocation: 'lib/assets/users/user-3.jpg',
                        ),
                        StoryCircle(
                          userName: 'Betty',
                          userImageLocation: 'lib/assets/users/user-4.jpg',
                        ),
                        StoryCircle(
                          userName: 'Tomas',
                          userImageLocation: 'lib/assets/users/user-5.jpg',
                        ),
                        StoryCircle(
                          userName: 'Hannah',
                          userImageLocation: 'lib/assets/users/user-6.jpg',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                MessageCard(
                  userName: 'Pam Graves',
                  userImageLocation: 'lib/assets/users/user-2.jpg',
                  isNewMsg: true,
                  isSelected: false,
                  message: 'I have few updates',
                  notificationLabel: '3',
                  time: '12.52 PM',
                ),
                if (!kIsWeb)
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                MessageCard(
                  userName: 'Shelley Robertson',
                  userImageLocation: 'lib/assets/users/user-3.jpg',
                  isNewMsg: true,
                  isSelected: true,
                  message: 'Hi, Please check these',
                  notificationLabel: '2',
                  time: '12.35 PM',
                ),
                if (!kIsWeb)
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                MessageCard(
                  userName: 'Molly Guzman',
                  userImageLocation: 'lib/assets/users/user-4.jpg',
                  isNewMsg: true,
                  isSelected: false,
                  message: 'Hey, Up for a call now?',
                  notificationLabel: '2',
                  time: '12.11 PM',
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                MessageCard(
                  userName: 'Marcus Cohen',
                  userImageLocation: 'lib/assets/users/user-1.jpg',
                  isNewMsg: false,
                  isSelected: false,
                  message: 'You: Sure!',
                  notificationLabel: '1',
                  time: '11.42 AM',
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                MessageCard(
                  userName: 'Ben Robinson',
                  userImageLocation: 'lib/assets/users/user-5.jpg',
                  isNewMsg: false,
                  isSelected: false,
                  message: 'I have few updates',
                  notificationLabel: '1',
                  time: '11.40 AM',
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                MessageCard(
                  userName: 'Jessie Mckinney',
                  userImageLocation: 'lib/assets/users/user-6.jpg',
                  isNewMsg: false,
                  isSelected: false,
                  message: 'I have few updates',
                  notificationLabel: '2',
                  time: '11.21 AM',
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                MessageCard(
                  userName: 'Molly Guzman',
                  userImageLocation: 'lib/assets/users/user-4.jpg',
                  isNewMsg: false,
                  isSelected: false,
                  message: 'Okay! got it',
                  notificationLabel: '1',
                  time: '10.58 AM',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
