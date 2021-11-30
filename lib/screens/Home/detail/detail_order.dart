import 'package:flutter/material.dart';
import 'package:rebike/routes/page_route.dart';
import 'package:rebike/screens/Home/payment/payment_screen.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({Key? key}) : super(key: key);

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  DateTime selectedDate = DateTime.now();
  DateTime returnDate = DateTime.now().add(const Duration(days: 1));
  final firstDate = DateTime(2010, 1);
  final lastDate = DateTime(2022, 12);

  String dropdownValue = '1';
  String dropdownValue2 = 'AM';

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
                          "Detail Order",
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
                    "Keranjang Saya",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 91,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.5),
                                  Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.2)
                                ]),
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 20, left: 10, right: 10, bottom: 5),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image 2.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 91,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Sepeda Listrik Volta 202",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff333333),
                                ),
                              ),
                              Text(
                                "240K/hari",
                                style: TextStyle(
                                  fontSize: 10,
                                  color:
                                      const Color(0xff333333).withOpacity(0.7),
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
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: const Divider(
                    color: Color(0xff333333),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Text(
                    "Form Sewa",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffc4c4c4).withOpacity(0.1),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Tgl Sewa',
                                style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '$selectedDate'.split(' ')[0],
                                style: const TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _openDatePicker(context);
                      },
                      icon: Icon(
                        Icons.calendar_today,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffc4c4c4).withOpacity(0.1),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Tgl Pengembalian',
                                style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '$returnDate'.split(' ')[0],
                                style: const TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _openDatePicker2(context);
                      },
                      icon: Icon(
                        Icons.calendar_today,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffc4c4c4).withOpacity(0.1),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Waktu sewa',
                                style: TextStyle(
                                  color: Color(0xff333333),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      elevation: 16,
                      style: const TextStyle(
                        color: Color(0xff333333),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(width: 10),
                    DropdownButton<String>(
                      value: dropdownValue2,
                      elevation: 16,
                      style: const TextStyle(
                        color: Color(0xff333333),
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue2 = newValue!;
                        });
                      },
                      items: <String>['AM', 'PM']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          BouncyPageRoute(
                            widget: Payment(),
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
                              "Checkout",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
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
    );
  }

  _openDatePicker(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  _openDatePicker2(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: returnDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (date != null) {
      setState(() {
        returnDate = date;
      });
    }
  }
}
