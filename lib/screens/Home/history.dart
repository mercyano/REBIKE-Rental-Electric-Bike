import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/screens/Home/chat.dart';
import 'package:rebike/screens/Home/home.dart';
import 'package:rebike/shared/shared.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Riwayat",
          style: blackTextFont.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 31),
                child: Text(
                  "Today",
                  style: blackTextFont.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: lightYellowColor3,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "8/9/2021",
                          style: blackTextFont.copyWith(
                              fontSize: 9, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "A0127095",
                          style: blackTextFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "00:30",
                          style: blackTextFont.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 3000",
                      style: blackTextFont.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: lightYellowColor3,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "8/9/2021",
                          style: blackTextFont.copyWith(
                              fontSize: 9, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "A0127095",
                          style: blackTextFont.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "00:30",
                          style: blackTextFont.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Text(
                      "Rp. 3000",
                      style: blackTextFont.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
          // elevation: 0,
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
              title: Text("Riwayat", style: GoogleFonts.poppins(fontSize: 12)),
              backgroundColor: lightYellowColor1,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              if (_currentIndex == 1) {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) =>
                        ChatPage(),
                    transitionDuration: Duration.zero,
                  ),
                );
              } else if (_currentIndex == 0) {
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
              }
            });
          },
        ),
      ),
    );
  }
}
