import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/components/rounded_input_field.dart';
import 'package:rebike/components/rounded_password_field.dart';
import 'package:rebike/components/text_field_container.dart';
import 'package:rebike/routes/page_route.dart';
import 'package:rebike/screens/Home/home.dart';
import 'package:rebike/screens/auth/auth_screen.dart';
import 'package:rebike/screens/auth/forget_password.dart';
import 'package:rebike/screens/auth/register_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/login_image.svg',
                  height: size.height * 0.3,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 40.0,
                    right: 40.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 40.0,
                    right: 40.0,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hallo!! Selamat Datang di aplikasi kami',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                RoundedInputField(
                  hintText: 'Your Email',
                  onChanged: (value) {},
                  icon: Icons.person,
                ),
                RoundedPasswordField(
                  hintText: 'Your Password',
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 40.0),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Text(
                      'Lupa Password?',
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFFDC2727),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) =>
                            ForgetPassword(),
                        transitionDuration: Duration.zero,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  width: size.width,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      height: 60.0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: const StadiumBorder(),
                        shadowColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
                        'Masuk',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
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
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Belum punya akun? Silahkan ',
                          style: GoogleFonts.poppins(
                            fontSize: 11.0,
                            color: const Color(0xFF333333),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        child: InkWell(
                          child: Text(
                            'Register ',
                            style: GoogleFonts.poppins(
                              fontSize: 11.0,
                              color: const Color(0xFFDC2727),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              BouncyPageRoute(
                                widget: RegisterPage(),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          'dahulu',
                          style: GoogleFonts.poppins(
                            fontSize: 11.0,
                            color: const Color(0xFF333333),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
