import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/routes/page_route.dart';
import 'package:rebike/screens/Home/detail_chat_screen.dart';
import 'package:rebike/screens/Home/history.dart';
import 'package:rebike/screens/Home/home.dart';
import 'package:rebike/shared/shared.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: Container(
            padding: const EdgeInsets.only(left: 40.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) =>
                        HomePage(),
                    transitionDuration: Duration.zero,
                  ),
                );
              },
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 40.0),
              child: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: blackColor,
                ),
                onPressed: () {},
              ),
            ),
          ],
          title: Text(
            "Pesan",
            style: blackTextFont.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              height: 36,
              margin: EdgeInsets.only(top: 25, left: 40, right: 40),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  fillColor: greyColor,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: blackColor,
                    size: 20,
                  ),
                  hintText: "Cari",
                  isDense: true,
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 12.5,
                left: 40,
                right: 38,
              ),
              child: Divider(
                color: blackColor,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  BouncyPageRoute(
                    widget: DetailChat(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12.5, horizontal: 40),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffFDCF09),
                      child: CircleAvatar(
                        radius: 19,
                        backgroundImage: AssetImage('assets/image.png'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Customer Service",
                              style: blackTextFont.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                              maxLines: 2,
                              style: blackTextFont.copyWith(
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "13.10",
                          style: blackTextFont.copyWith(
                            fontSize: 9,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          padding: EdgeInsets.all(1),
                          decoration: new BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            '3',
                            style: whiteTextFont.copyWith(fontSize: 9),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  BouncyPageRoute(
                    widget: DetailChat(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12.5, horizontal: 40),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffFDCF09),
                      child: CircleAvatar(
                        radius: 19,
                        backgroundImage: AssetImage('assets/image.png'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Customer Service",
                              style: blackTextFont.copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                              maxLines: 2,
                              style: blackTextFont.copyWith(
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "13.10",
                          style: blackTextFont.copyWith(
                            fontSize: 9,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          padding: EdgeInsets.all(1),
                          decoration: new BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            '3',
                            style: whiteTextFont.copyWith(fontSize: 9),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 65,
          // ignore: prefer_const_literals_to_create_immutables
          decoration: BoxDecoration(color: lightYellowColor2, boxShadow: [
            BoxShadow(
                color: lightYellowColor1,
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3)),
          ]),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: lightYellowColor2,
            selectedItemColor: primaryColor,
            unselectedItemColor: lightYellowColor1,
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home", style: GoogleFonts.poppins(fontSize: 12)),
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                title: Text("Pesan", style: GoogleFonts.poppins(fontSize: 12)),
                backgroundColor: lightYellowColor1,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title:
                    Text("Riwayat", style: GoogleFonts.poppins(fontSize: 12)),
                backgroundColor: lightYellowColor1,
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                if (_currentIndex == 0) {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) =>
                          HomePage(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                } else if (_currentIndex == 2) {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) =>
                          HistoryPage(),
                      transitionDuration: Duration.zero,
                    ),
                  );
                }
              });
            },
          ),
        ));
  }
}
