import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Chat', style: TextStyle(fontSize: 35)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Column(
                children: const <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                  Text(
                    'Mustafa',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: const <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                  Text(
                    'Mustafa',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: const <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                  Text(
                    'Mustafa',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: const <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                  Text(
                    'Mustafa',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: const <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                  Text(
                    'Mustafa',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: const <Widget>[
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                  ),
                  Text(
                    'Mustafa',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
            ],
          ),
        )
      ],
    );
  }
}
