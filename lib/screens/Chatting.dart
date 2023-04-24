import 'package:flutter/material.dart';

class Chatting extends StatefulWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  _ChattingState createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  final _textController = TextEditingController();
  final List<String> _quickWords = ['Hello', 'Good day!', 'How are you?'];
  final List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Chatting')),
      body: Column(children: [
        Expanded(
          child: ListView(
            reverse: false,
            children: _messages.map((message) => ChatMessage(text: message, isSentByMe: true)).toList(),
          ),
        ),
        SizedBox(
          height: 50.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _quickWords.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.cyanAccent[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () => _handleSubmit(_quickWords[index]),
                child: Text(_quickWords[index]),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10.0), // add margin here

        Container(

          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(children: [
            IconButton(icon: Icon(Icons.emoji_emotions), onPressed: () {}),
            IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
            Expanded(
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Send a message',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 8.0,
                  ),
                ),
                onSubmitted: _handleSubmit,
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmit(_textController.text),
            ),
          ]),
        ),

      ]),
    );
  }

  void _handleSubmit(String text) {
    _textController.clear();
    setState(() {
      _messages.add(text);
    });
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isSentByMe;

  const ChatMessage({required this.text, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    final bgColor = isSentByMe ? Colors.cyanAccent[200] : Colors.cyan[100];
    final align = isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final textColor = isSentByMe ? Colors.white : Colors.black;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: align,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 15.0,
            ),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
