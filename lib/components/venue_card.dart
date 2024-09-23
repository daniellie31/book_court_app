import 'package:book_court_app/const.dart';
import 'package:book_court_app/model/venue_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VenueCard extends StatelessWidget {
  Venue venue;
  VenueCard({super.key, required this.venue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 0.2,
            blurRadius: 1,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      // color: darkBlue,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(venue.venueImage),
              // height: 100,
              // fit: BoxFit.contain,
              // width: 120,
              // width: 100,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    venue.venueName,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: darkBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    venue.venueAddress,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Colors.grey[600],
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "${venue.venueDistance.toString()} km away",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: lightBlue,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: yellowColor,
                        size: 16,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        "${venue.venueRating} (${venue.venueReviews} reviews)",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: lightBlue,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
