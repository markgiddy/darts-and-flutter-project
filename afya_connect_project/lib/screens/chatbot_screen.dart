import 'package:flutter/material.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, String>> _messages = [];

  void _sendMessage() {
    final message = _messageController.text.trim();
    if (message.isEmpty) return;

    setState(() {
      _messages.add({"sender": "user", "text": message});
      _messages.add({"sender": "bot", "text": _getBotResponse(message)});
    });

    _messageController.clear();
  }

  String _getBotResponse(String message) {
    final msg = message.toLowerCase();

    if (msg.contains("sad") || msg.contains("depressed")) {
      return "I'm sorry you're feeling that way. You're not alone. Would you like to talk to a counselor?";
    } else if (msg.contains("happy") || msg.contains("good")) {
      return "That's great to hear! Keep up the positive energy!";
    } else if (msg.contains("help")) {
      return "I'm here for you. You can also reach out to a mental health hotline like Befrienders Kenya: 0722 178 177.";
    } else {
      return "Thank you for sharing. Tell me more about how you feel.";
    }
  }

  Widget _buildMessage(Map<String, String> message) {
    bool isUser = message["sender"] == "user";
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color: isUser ? Colors.teal[100] : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(message["text"] ?? ""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return _buildMessage(_messages[index]);
            },
          ),
        ),
        Divider(height: 1),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: "Type a message...",
                    border: InputBorder.none,
                  ),
                  onSubmitted: (_) => _sendMessage(),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send, color: Colors.teal),
                onPressed: _sendMessage,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
