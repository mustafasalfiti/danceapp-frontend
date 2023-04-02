import 'package:flutter/material.dart';

class Message {
  String text;
  DateTime dateTime;
  bool isMe;

  Message({required this.text, required this.dateTime, required this.isMe});
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<Message> messages = [
    Message(text: 'Hi, how are you?', dateTime: DateTime.now(), isMe: false),
    Message(
        text: 'I am good, thanks for asking!',
        dateTime: DateTime.now(),
        isMe: true),
    Message(
        text: 'What are you up to today?',
        dateTime: DateTime.now(),
        isMe: false),
    Message(text: 'Hi, how are you?', dateTime: DateTime.now(), isMe: false),
    Message(
        text: 'I am good, thanks for asking!',
        dateTime: DateTime.now(),
        isMe: true),
    Message(
        text: 'What are you up to today?',
        dateTime: DateTime.now(),
        isMe: false),
    Message(text: 'Hi, how are you?', dateTime: DateTime.now(), isMe: false),
    Message(
        text: 'I am good, thanks for asking!',
        dateTime: DateTime.now(),
        isMe: true),
    Message(
        text: 'What are you up to today?',
        dateTime: DateTime.now(),
        isMe: false),
    Message(text: 'Hi, how are you?', dateTime: DateTime.now(), isMe: false),
    Message(
        text:
            'I am good, thanks for askingAASDASdwasdawd ad awd asdadawd awd awd adasd !',
        dateTime: DateTime.now(),
        isMe: true),
    Message(
        text: 'What are you up to today?',
        dateTime: DateTime.now(),
        isMe: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Georgi Tass'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = messages[index].text;
                final date = TimeOfDay.fromDateTime(messages[index].dateTime);
                final isMe = messages[index].isMe;
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: isMe
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width - 50,
                        ),
                        color: isMe == true
                            ? const Color.fromARGB(199, 26, 209, 102)
                            : const Color.fromARGB(102, 54, 76, 244),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              !isMe ? 'Georgi Tass' : "Me",
                              textAlign: TextAlign.left,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              message,
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              color: Colors.green,
                              child: Text(
                                "${date.hour}:${date.minute}",
                                style: const TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.grey[300],
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                        hintText: 'Type a message...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Send message functionality
                    print(_textEditingController.text);
                    _textEditingController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
