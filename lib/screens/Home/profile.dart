import 'package:flutter/material.dart';
import 'package:rebike/screens/auth/login_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: ListView(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 37, left: 40, right: 40, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.arrow_back_ios_sharp,
                              size: 24,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 36),
                  child: const Text(
                    "Account",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/Ellipse 98.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Ruben Stanton",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Lihat dan Edit Profile",
                                style: TextStyle(
                                  fontSize: 9,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.4),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: const Icon(
                                  Icons.lock,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Ubah Password",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.4),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: const Icon(
                                  Icons.library_books,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Petunjuk Pemakaian",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.4),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: const Icon(
                                  Icons.check,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Syarat dan Ketentuan",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.4),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: const Icon(
                                  Icons.people,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Undang Teman",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.4),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: const Icon(
                                  Icons.info,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Tentang Kami",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.4),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Material(
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
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Keluar",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
