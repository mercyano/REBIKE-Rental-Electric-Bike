import 'package:flutter/material.dart';
import 'package:rebike/components/text_message.dart';
import 'package:rebike/models/chatMessage.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        TextMessage(message: message),
      ],
    );
  }
}
