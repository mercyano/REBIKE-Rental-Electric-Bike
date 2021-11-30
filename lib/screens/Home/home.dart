import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/screens/Home/chat.dart';
import 'package:rebike/screens/Home/detail/detail_produk.dart';
import 'package:rebike/screens/Home/detail/rental.dart';
import 'package:rebike/screens/Home/history.dart';
import 'package:rebike/screens/Home/profile.dart';
import 'package:rebike/shared/shared.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 37, left: 40, right: 40),
        child: ListView(
          children: [
            Container(
              // margin: EdgeInsets.only(top: 37, left: 40, right: 40, bottom: 35),
              child: Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: blackTextFont.copyWith(fontSize: 10),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Ruben Stanton",
                          style: blackTextFont.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) =>
                                ProfilePage(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      },
                      child: Container(
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xffFDCF09),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('assets/image.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 31),
              child: Text(
                "Bike Rental",
                style: blackTextFont.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: lightYellowColor1),
                color: lightYellowColor2,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ongoing",
                        style: blackTextFont.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "08.00 - 14.00",
                        style: blackTextFont.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "JL. Villa Bukit Tidar No. 9-10",
                        style: blackTextFont.copyWith(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage("assets/Component 30.png"),
                      width: 46,
                      height: 46,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // JENIS SEPEDA
              margin: EdgeInsets.only(top: 31),
              child: Text(
                "Jenis Sepeda",
                style: blackTextFont.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 164,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    // SEPEDA LISTRIK VOLTA
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 9),
                          width: 132,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: primaryColor,
                          ),
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sepeda Listrik Volta 202",
                                              style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "240K/hari",
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 9,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.bike_scooter,
                                                    size: 8,
                                                    color: Color(0xffdc2727),
                                                  ),
                                                  Text(
                                                    " 20 km",
                                                    style: TextStyle(
                                                      color: Color(0xffffffff),
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image 2.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffffffff),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Detail",
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Color(0xff333333),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
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
                    // SEPEDA LISTRIK VOLTA
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 9),
                          width: 132,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: primaryColor,
                          ),
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sepeda Listrik Volta 202",
                                              style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "240K/hari",
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 9,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.bike_scooter,
                                                    size: 8,
                                                    color: Color(0xffdc2727),
                                                  ),
                                                  Text(
                                                    " 20 km",
                                                    style: TextStyle(
                                                      color: Color(0xffffffff),
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image 2.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffffffff),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Detail",
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Color(0xff333333),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
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
                    // SEPEDA LISTRIK VOLTA
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 9),
                          width: 132,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: primaryColor,
                          ),
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Sepeda Listrik Volta 202",
                                              style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "240K/hari",
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 9,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.bike_scooter,
                                                    size: 8,
                                                    color: Color(0xffdc2727),
                                                  ),
                                                  Text(
                                                    " 20 km",
                                                    style: TextStyle(
                                                      color: Color(0xffffffff),
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image 2.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffffffff),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Detail",
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: Color(0xff333333),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
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
                ],
              ),
            ),
            Container(
              // RENTAL BIKE
              margin: EdgeInsets.only(top: 31),
              child: Text(
                "Rental Bike",
                style: blackTextFont.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) =>
                        Rental(),
                    transitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0XFFFFDF9E),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/Rental_location.png"),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Depan Indomerit",
                              style: blackTextFont.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "JL. Villa Bukit Tidar No. 9-10",
                              maxLines: 1,
                              style: blackTextFont.copyWith(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "5 Km",
                      style: blackTextFont.copyWith(
                          fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) =>
                        Rental(),
                    transitionDuration: Duration.zero,
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0XFFFFDF9E),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage("assets/Rental_location.png"),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Depan Indomerit",
                              style: blackTextFont.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "JL. Villa Bukit Tidar No. 9-10",
                              maxLines: 1,
                              style: blackTextFont.copyWith(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "5 Km",
                      style: blackTextFont.copyWith(
                          fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
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
            setState(
              () {
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
              },
            );
          },
        ),
      ),
    );
  }
}
