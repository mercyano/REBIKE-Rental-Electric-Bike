import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebike/screens/Home/home.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  _PaymentSuccessState createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Detail Transaksi',
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF333333),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 37.0,
              vertical: 40.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: size.width,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          padding:
                              const EdgeInsets.only(top: 50.0, bottom: 25.0),
                          margin: const EdgeInsets.only(top: 40.0),
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.25),
                                spreadRadius: 0,
                                blurRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Transfer Berhasil',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF333333),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                child: Text(
                                  'Kamu telah berhasil membayar sejumlah',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xFF333333),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                child: Text(
                                  'Rp 480.000',
                                  style: GoogleFonts.poppins(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF333333),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                child: Text(
                                  '10 Nov 2021',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                    color: const Color(0xFF333333),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 120.0,
                            right: 120.0,
                          ),
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/checklist.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Rincian Transaksi',
                          style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF333333),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Divider(
                        color: Colors.black.withOpacity(.7),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Text(
                              'Nama Item',
                              style: GoogleFonts.poppins(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF333333),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Text(
                              'Sepeda Listrik Volta 202',
                              style: GoogleFonts.poppins(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF333333),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Text(
                              'Jumlah Item',
                              style: GoogleFonts.poppins(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF333333),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Text(
                              '1',
                              style: GoogleFonts.poppins(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF333333),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Divider(
                        color: Colors.black.withOpacity(.7),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Text(
                              'Biaya',
                              style: GoogleFonts.poppins(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF333333),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 15.0,
                            ),
                            child: Text(
                              'Rp 480.000',
                              style: GoogleFonts.poppins(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF333333),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
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
                        'Home',
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
                                HomePage(),
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
}
