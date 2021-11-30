import 'package:flutter/material.dart';
import 'package:rebike/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.lock,
            color: Color(0xFFCCCCCC),
          ),
          suffixIcon: const Icon(
            Icons.visibility_off,
            color: Color(0xFFCCCCCC),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
