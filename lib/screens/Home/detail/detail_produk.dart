import 'package:flutter/material.dart';
import 'package:rebike/screens/Home/detail/detail_order.dart';

class DetailProduk extends StatelessWidget {
  const DetailProduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffffffff),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
              Theme.of(context).primaryColor.withOpacity(0.5),
              const Color(0xffffffff)
            ])),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 37, left: 40, right: 40, bottom: 35),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
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
                            "Detail Produk",
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
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 36),
                    height: 320,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Group 65.png"),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(top: 25),
                          width: MediaQuery.of(context).size.width,
                          height: 54,
                          child: const Text(
                            "Sepeda Listrik Volta 202",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(top: 25),
                          width: MediaQuery.of(context).size.width,
                          height: 54,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "240K",
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  const Text(
                                    "/hari",
                                    style: TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  const Text(
                                    "4.8",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          margin: const EdgeInsets.only(top: 46, right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Power",
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      const Color(0xff333333).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                "400wh",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
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
                          height: 60,
                          margin:
                              const EdgeInsets.only(top: 46, right: 6, left: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Range",
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      const Color(0xff333333).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                "5km",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
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
                          height: 60,
                          margin: const EdgeInsets.only(top: 46, left: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Speed",
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      const Color(0xff333333).withOpacity(0.5),
                                ),
                              ),
                              const Text(
                                "60mkh",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 35),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailOrder();
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
                                "Pesan",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
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
