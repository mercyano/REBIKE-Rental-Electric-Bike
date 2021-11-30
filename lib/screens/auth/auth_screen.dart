import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/screens/auth/login_screen.dart';
import 'package:rebike/screens/auth/register_screen.dart';
import 'package:rebike/routes/page_route.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/auth_image.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Special day',
                      style: GoogleFonts.poppins(
                          fontSize: 32.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Text(
                      'Ajak teman, sahabat, serta keluarga untuk cerahkan hari dengan membawa kesejukan lingkungan bersama Rebike',
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60.0,
                      margin: const EdgeInsets.all(40.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                        color: Color(0xFFD69A1E),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              buildButtonAuth('Register', 0),
                              buildButtonAuth('Sign In', 1),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButtonAuth(String text, int index) {
    return Flexible(
      flex: 1,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        child: ConstrainedBox(
          constraints: const BoxConstraints.tightFor(
            height: 60.0,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: index == _selectedItemIndex
                  ? Colors.white
                  : Colors.white.withOpacity(0),
              shape: const StadiumBorder(),
              shadowColor: Colors.transparent,
              elevation: 0,
            ),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14.0,
                color: index == _selectedItemIndex
                    ? const Color(0xFFF3AE25)
                    : const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                BouncyPageRoute(
                  widget: index == _selectedItemIndex
                      ? RegisterPage()
                      : LoginPage(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
