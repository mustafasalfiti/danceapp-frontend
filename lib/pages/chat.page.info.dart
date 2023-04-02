import 'package:flutter/material.dart';

import 'chat.page.dart';

class ChatPageInfo extends StatelessWidget {
  const ChatPageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        chatInboxCard(context),
        const SizedBox(
          height: 10,
        ),
        chatInboxCard(context),
        const SizedBox(
          height: 10,
        ),
        chatInboxCard(context),
      ],
    );
  }
}

Widget chatInboxCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ChatPage()));
    },
    child: Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.red,
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'Georgi Tass',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text('jetzt', style: TextStyle(fontSize: 12))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Hey Bruder, was haste heute vor?',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
