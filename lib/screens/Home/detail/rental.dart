import 'package:flutter/material.dart';
import 'package:rebike/screens/Home/detail/detail_produk.dart';
import 'package:rebike/screens/Home/home.dart';

class Rental extends StatelessWidget {
  const Rental({Key? key}) : super(key: key);

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
              children: [
                Stack(
                  children: [
                    Row(
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
                                          Animation<double>
                                              secondaryAnimation) =>
                                      HomePage(),
                                  transitionDuration: Duration.zero,
                                ),
                              );
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
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 24,
                          color: Theme.of(context).primaryColor,
                        ),
                        const Text(
                          "JL. Villa Bukit Tidar No. 9-10",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 36, bottom: 13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff0f0f0),
                  ),
                  child: Container(
                    child: const TextField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 10,
                        //color: Color(0xff333333).withOpacity(0.3),
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                        ),
                        border: InputBorder.none,
                        hintText: "Cari",
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 9),
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Sepeda Listrik Volta 202",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "240K hari",
                                            //textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 9,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: const [
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
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 94,
                                        child: const DecoratedBox(
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
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const DetailProduk();
                                      }));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 15),
                                      width: 80,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: const Center(
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
                      ),
                    ],
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
