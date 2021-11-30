import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:rebike/screens/auth/auth_screen.dart';

class OnboardingTiga extends StatelessWidget {
  const OnboardingTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 341,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/undraw_lost_online_re_upmy 1.png"),
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
                children: const [
                  Text(
                    "Fun & easy",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
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
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    child: const Text(
                      "Kemudahan yang tidak selalu membosankan ini membawa kamu menjadi pribadi yang sehat dan lebih baik",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
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
                      Container(
                        width: 20,
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
                  margin:
                      const EdgeInsets.only(left: 40, right: 40, bottom: 35),
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
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.white,
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
                                    AuthPage(),
                                transitionDuration: Duration.zero,
                              ),
                            );
                          },
                          child: Row(
                            children: const [
                              Text(
                                "Next",
                                style: TextStyle(
                                  color: Colors.white,
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
