import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/screens/auth/auth_screen.dart';
import 'package:rebike/screens/onboarding_dua.dart';
import 'package:rebike/shared/shared.dart';

class OnboardingSatu extends StatelessWidget {
  const OnboardingSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 341,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // fit: BoxFit.fitWidth,
                    image: AssetImage("assets/undraw_map_dark_re_36sy 1.png"),
                    //fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Modern Designed",
                    style: whiteTextFont.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              )),
          Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      "Sepeda kami yang dirancang elektrik dan\nmodern",
                      textAlign: TextAlign.center,
                      style: whiteTextFont.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              )),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Container(
                  width: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 20,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 7,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 7,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40, right: 40, bottom: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (BuildContext context,
                                        Animation<double> animation,
                                        Animation<double> secondaryAnimation) =>
                                    AuthPage(),
                                transitionDuration: Duration.zero,
                              ),
                            );
                          },
                          child: Text(
                            "Skip",
                            style: whiteTextFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (BuildContext context,
                                        Animation<double> animation,
                                        Animation<double> secondaryAnimation) =>
                                    OnboardingDua(),
                                transitionDuration: Duration.zero,
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Next",
                                style: whiteTextFont.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
