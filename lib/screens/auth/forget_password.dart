import 'package:flutter/material.dart';
import 'package:rebike/screens/auth/login_screen.dart';
import 'package:rebike/screens/auth/reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        margin: const EdgeInsets.only(left: 40, right: 40, top: 37),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Lupa Password?",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
                    "Jangan khawatir!!! Silahkan masukkan email yang telah terdaftar untuk dikirim panduan reset password",
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
                            image: AssetImage("assets/Group 28.png"),
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
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "Email",
                        isDense: true,
                        contentPadding: const EdgeInsets.all(12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
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
                        "Ingat Password?",
                        style: TextStyle(
                          fontSize: 9,
                          color: Color(0xff333333),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
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
                        child: const Text(
                          "Login",
                          style:
                              TextStyle(fontSize: 9, color: Color(0xffdc2727)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const ResetPassword();
                        }));
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
                              "Kirim",
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
          ],
        ),
      ),
    );
  }
}
