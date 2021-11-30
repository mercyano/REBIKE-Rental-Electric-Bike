import 'package:flutter/material.dart';
import 'package:rebike/screens/onboarding_satu.dart';
import 'package:rebike/shared/shared.dart';

class Opening extends StatelessWidget {
  const Opening({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // child: const Image(
              //   image: AssetImage('assets/logo_rebike.png'),
              // ),
              height: 178.0,
              margin: const EdgeInsets.only(top: 176),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo_rebike.png'),
                ),
              ),
            ),
            Container(
              width: 105,
              height: 45,
              margin: EdgeInsets.only(top: 66),
              child: SizedBox(
                width: 105,
                height: 45,
                child: TextButton(
                  child: Text(
                    "Get Started",
                    style: whiteTextFont.copyWith(
                        fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(15)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(blackColor),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(blackColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) =>
                            OnboardingSatu(),
                        transitionDuration: Duration.zero,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
