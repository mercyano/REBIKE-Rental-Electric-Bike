import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final child;
  const TextFieldContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color(
              (0xFFCCCCCC),
            ),
            width: 2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
