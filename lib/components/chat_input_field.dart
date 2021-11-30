import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      decoration: const BoxDecoration(
        color: Color(0xFFFADFA8),
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                height: 50.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                child: Row(
                  children: const <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type message',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Color(0xFFAAAAAA),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0),
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Icon(
                Icons.send,
                size: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
