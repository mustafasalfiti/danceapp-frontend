import 'package:flutter/material.dart';

class EventWidget extends StatefulWidget {
  const EventWidget({super.key});

  @override
  State<EventWidget> createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Fixed Events",
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: <Widget>[
                Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(50),
                  child: const Text('First Box'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(50),
                  child: const Text('Second Box'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(50),
                  child: const Text('Third Box'),
                ),
              ],
            ),
          ),
        ]);
  }
}
