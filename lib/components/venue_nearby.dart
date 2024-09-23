import 'package:book_court_app/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VenueNearbyCard extends StatelessWidget {
  final int index;

  const VenueNearbyCard({super.key, required this.index});

  void _handleTap() {
    print("venue $index clicked");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _handleTap,
      child: Stack(
        // alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.srcOver,
              ),
              child: const Image(
                image: AssetImage("assets/images/kharisma.JPG"),
                height: 100,
              ),
            ),
          ),
          Positioned(
            bottom: 4,
            left: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kharisma Sport Centre",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: backgroundColor,
                  ),
                ),
                Text(
                  "3.2 km away",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: backgroundColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: yellowColor,
                      size: 16,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "4.8 (210 reviews)",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: backgroundColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
