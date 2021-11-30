import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/screens/opening.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xfff2af25),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      title: 'ReBike',
      home: Opening(),
    );
  }
}
