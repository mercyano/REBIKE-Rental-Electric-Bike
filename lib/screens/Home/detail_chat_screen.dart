import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rebike/components/chat_input_field.dart';
import 'package:rebike/components/message.dart';
import 'package:rebike/models/chatMessage.dart';
import 'package:rebike/screens/Home/chat.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Customer Service',
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF333333),
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.only(left: 40.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) =>
                      ChatPage(),
                  transitionDuration: Duration.zero,
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF333333),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.builder(
                  itemCount: demeChatMessage.length,
                  itemBuilder: (context, index) => Message(
                    message: demeChatMessage[index],
                  ),
                ),
              ),
            ),
            ChatInputField(),
          ],
        ),
      ),
    );
  }
}
