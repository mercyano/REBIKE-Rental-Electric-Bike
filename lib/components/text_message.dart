import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/models/chatMessage.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      padding:
          EdgeInsets.symmetric(horizontal: 20.0 * 0.74, vertical: 20.0 / 2),
      decoration: BoxDecoration(
        color: message.isSender
            ? const Color(0xFFFBDEA2)
            : const Color(0xFFE5E5E5),
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Text(
        message.text,
        style: GoogleFonts.poppins(
          color: const Color(0xFF333333),
          fontWeight: FontWeight.w500,
        ),
        // textAlign: message.isSender ? TextAlign.right : TextAlign.left,
      ),
    );
  }
}
