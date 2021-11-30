import 'package:flutter/material.dart';
import 'package:rebike/shared/shared.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      // bottomOpacity: 0.0,
      // elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: blackColor,
          ),
          onPressed: () {},
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
    );
  }
}
