import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/screens/Home/detail/detail_order.dart';
import 'package:rebike/screens/Home/payment/payment_screen.dart';
import 'package:rebike/screens/Home/payment/paymentsuccess_screen.dart';

class EwalletPayment extends StatefulWidget {
  const EwalletPayment({Key? key}) : super(key: key);

  @override
  _EwalletPaymentState createState() => _EwalletPaymentState();
}

class _EwalletPaymentState extends State<EwalletPayment> {
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Pembayaran',
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF333333),
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.only(left: 40.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) =>
                      DetailOrder(),
                  transitionDuration: Duration.zero,
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF333333),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 37.0,
              vertical: 40.0,
            ),
            width: size.width,
            child: Column(
              children: <Widget>[
                Container(
                  width: size.width,
                  child: Text(
                    'Total Pembayaran',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF333333),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Rp480.000',
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF333333),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            elevation: 0),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Lihat Detail',
                              style: GoogleFonts.poppins(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFFDC2727),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Color(0xFF333333),
                              size: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Divider(
                  color: Colors.black.withOpacity(.3),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: size.width,
                  child: Text(
                    'Pilih Metode Pembayaran',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  width: size.width,
                  height: 45.0,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          width: size.width / 2,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints.tightFor(
                              height: 45.0,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (BuildContext context,
                                            Animation<double> animation,
                                            Animation<double>
                                                secondaryAnimation) =>
                                        EwalletPayment(),
                                    transitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFF2AF25),
                                shape: const StadiumBorder(),
                                shadowColor: Colors.transparent,
                                elevation: 0,
                              ),
                              child: Text(
                                'E-Wallet',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          width: size.width / 2,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints.tightFor(
                              height: 45.0,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (BuildContext context,
                                            Animation<double> animation,
                                            Animation<double>
                                                secondaryAnimation) =>
                                        Payment(),
                                    transitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                    color: Color(0xFF333333), width: 4.0),
                                primary: Colors.white,
                                shape: const StadiumBorder(),
                                shadowColor: Colors.transparent,
                                elevation: 0,
                              ),
                              child: Text(
                                'Transfer Bank',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  color: const Color(0xFF333333),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                _myRadioButton(
                  'OVO',
                  'assets/ovo.svg',
                  0,
                  (newValue) => setState(() => _groupValue = newValue),
                ),
                _myRadioButton(
                  'Shopee Pay',
                  'assets/ShopeePay.svg',
                  1,
                  (newValue) => setState(() => _groupValue = newValue),
                ),
                _myRadioButton(
                  'Gopay',
                  'assets/goPay.svg',
                  2,
                  (newValue) => setState(() => _groupValue = newValue),
                ),
                _myRadioButton(
                  'Link Aja',
                  'assets/LinkAja.svg',
                  3,
                  (newValue) => setState(() => _groupValue = newValue),
                ),
                _myRadioButton(
                  'Dana',
                  'assets/dana.svg',
                  4,
                  (newValue) => setState(() => _groupValue = newValue),
                ),
                const SizedBox(
                  height: 42.0,
                ),
                Container(
                  width: size.width,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      height: 60.0,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: const StadiumBorder(),
                        shadowColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
                        'Lanjut',
                        style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) =>
                                PaymentSuccess(),
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
        ],
      ),
    );
  }

  Widget _myRadioButton(String title, String image, int value, onChanged) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: RadioListTile(
        secondary: SvgPicture.asset(
          image,
          width: 40.0,
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            color: const Color(0xFF333333),
            fontWeight: FontWeight.w500,
          ),
        ),
        value: value,
        groupValue: _groupValue,
        onChanged: onChanged,
        activeColor: const Color(0xFFF2AF25),
      ),
    );
  }
}
