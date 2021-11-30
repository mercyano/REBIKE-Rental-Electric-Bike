import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/components/rounded_input_field.dart';
import 'package:rebike/components/rounded_password_field.dart';
import 'package:rebike/routes/page_route.dart';
import 'package:rebike/screens/Home/home.dart';
import 'package:rebike/screens/auth/login_screen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 40.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: size.width,
                  child: Text(
                    'Create Your',
                    style: GoogleFonts.poppins(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF333333),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  width: size.width,
                  child: Text(
                    'Account',
                    style: GoogleFonts.poppins(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF333333),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: size.width,
                  child: Text(
                    'Silahkan lengkapi data berikut untuk melakukan pendaftaran',
                    style: GoogleFonts.poppins(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                RoundedInputField(
                  hintText: 'Nama Lengkap',
                  icon: Icons.person,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: 'No Telepon',
                  icon: Icons.call,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: 'Email',
                  icon: Icons.email,
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  hintText: 'Password',
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  hintText: 'Confirm Password',
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: size.height * 0.25,
                  width: size.width,
                  child: Stack(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          takePictureButton(
                            'Foto KTP',
                            0,
                            LoginPage(),
                          ),
                          takePictureButton(
                            'Foto Dengan KTP',
                            1,
                            LoginPage(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Sudah punya akun? ',
                          style: GoogleFonts.poppins(
                            fontSize: 11.0,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF333333),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            fontSize: 11.0,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFDC2727),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: size.width,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      height: 60.0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        'Register',
                        style: GoogleFonts.poppins(
                          fontSize: 18.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          BouncyPageRoute(
                            widget: HomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget takePictureButton(
    String text,
    int index,
    data,
  ) {
    Size size = MediaQuery.of(context).size;
    return Flexible(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: size.width / 2,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(
            color: const Color(0xFFCCCCCC),
            width: 3.0,
          ),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(18.0),
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(
              height: 0,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black.withOpacity(0.04),
                shadowColor: Colors.transparent,
                elevation: 0,
              ),
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  BouncyPageRoute(widget: data),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
