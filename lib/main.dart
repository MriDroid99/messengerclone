import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger Clone',
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.video_camera_back,
                        size: 20,
                      ),
                      radius: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Create Room'),
                    ),
                  ],
                ),
                OnlioneUsers(
                  'User 1',
                  'https://d1aettbyeyfilo.cloudfront.net/dataskills/unsplash_1602675288.jpg',
                ),
                OnlioneUsers(
                  'User 2',
                  'https://d1aettbyeyfilo.cloudfront.net/dataskills/unsplash_1602675288.jpg',
                ),
                OnlioneUsers(
                  'User 3',
                  'https://d1aettbyeyfilo.cloudfront.net/dataskills/unsplash_1602675288.jpg',
                ),
              ],
            ),
            Divider(),
            ChatUsers(
              'User 1',
              'https://d1aettbyeyfilo.cloudfront.net/dataskills/unsplash_1602675288.jpg',
              'How r u?',
            ),
            ChatUsers(
              'User 2',
              'https://d1aettbyeyfilo.cloudfront.net/dataskills/unsplash_1602675288.jpg',
              'i\'m fine',
            ),
            ChatUsers(
              'User 3',
              'https://d1aettbyeyfilo.cloudfront.net/dataskills/unsplash_1602675288.jpg',
              'i\'ll go to home at 22:00',
            )
          ],
        ),
      ),
    );
  }
}

class OnlioneUsers extends StatelessWidget {
  final String name, imgUrl;
  const OnlioneUsers(this.name, this.imgUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}

class ChatUsers extends StatelessWidget {
  final String name, imgUrl, msg;
  const ChatUsers(this.name, this.imgUrl, this.msg, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 4.0),
                  child: Text(msg),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
