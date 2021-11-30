import 'package:flutter/material.dart';
import 'package:rebike/screens/auth/login_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        margin: const EdgeInsets.only(top: 37, left: 40, right: 40),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Text(
                      "Email telah terkirim!",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: const [
                  Text(
                    "Silahkan mengecek kotak pesan kamu dan tekan link reset password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 182,
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Group 29.png"),
                            //fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
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
                                LoginPage(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Masuk",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Tidak menerima linknya?",
                        style: TextStyle(
                          fontSize: 9,
                          color: Color(0xff333333),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Kirim ulang",
                          style:
                              TextStyle(fontSize: 9, color: Color(0xffdc2727)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
