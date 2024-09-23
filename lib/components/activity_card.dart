import 'package:book_court_app/const.dart';
import 'package:book_court_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityCard extends StatelessWidget {
  final int index;

  const ActivityCard({super.key, required this.index});

  // void _handleTap() {
  //   Get.toNamed(RouteClass.getVenueRoute());
  // }

  @override
  Widget build(BuildContext context) {
    // List activityListImage = [
    //   "https://img.freepik.com/premium-vector/badminton-flat-illustration_418302-58.jpg?w=2000",
    //   "https://www.kindpng.com/picc/m/540-5407883_football-player-vector-png-transparent-png.png",
    //   "https://cdn.imgbin.com/14/0/21/imgbin-basketball-sport-creative-basketball-game-two-men-playing-basketballs-itWTBk5QSeMZTuUimtVmxgNxi.jpg",
    //   "https://png.pngtree.com/png-vector/20190625/ourmid/pngtree-tennis-player-are-about-to-hit-the-ball-png-image_1511376.jpg"
    // ];
    List activityListImage = [
      "assets/images/badminton.png",
      "assets/images/futsal.png",
      "assets/images/basketball.png",
      "assets/images/tennis.jpg"
    ];

    List activityListText = ["Badminton", "Futsal", "Basketball", "Tennis"];

    return InkWell(
      onTap: () {
        Get.toNamed(RouteClass.getVenueRoute());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              // child: Image.network(
              //   activityListImage[index],
              //   width: 150,
              //   height: 150,
              //   fit: BoxFit.cover,
              // ),
              child: Image(
                image: AssetImage(activityListImage[index]),
                width: 100,
                height: 80,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              activityListText[index],
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
