import 'package:book_court_app/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subTitle;
  final bool showBackBtn;

  const MyAppBar(
      {super.key,
      required this.title,
      this.subTitle,
      required this.showBackBtn});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: darkBlue),
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: showBackBtn,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: darkBlue,
        ),
      ),
      centerTitle: true,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Text(
            subTitle!,
            style: GoogleFonts.poppins(
              fontSize: 12,
              // fontWeight: FontWeight.bold,
              color: darkBlue,
            ),
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
