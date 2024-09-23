import 'package:book_court_app/components/activity_card.dart';
import 'package:book_court_app/components/venue_nearby.dart';
import 'package:book_court_app/const.dart';
import 'package:book_court_app/routes/routes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = [
      Image(
        fit: BoxFit.cover,
        image: const AssetImage("assets/images/workout.jpg"),
        width: MediaQuery.of(context).size.width * 1,
      ),
      Image(
        fit: BoxFit.cover,
        image: const AssetImage("assets/images/workout.jpg"),
        width: MediaQuery.of(context).size.width * 1,
      ),
      Image(
        fit: BoxFit.cover,
        image: const AssetImage("assets/images/workout.jpg"),
        width: MediaQuery.of(context).size.width * 1,
      ),
    ];
    return SafeArea(
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/profile-pict.jpg"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning,",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: lightBlue,
                            ),
                          ),
                          Text(
                            "Malvin Gevariel Chandra",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: darkBlue,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: darkBlue),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book and Play Together!",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: darkBlue,
                    ),
                  ),
                  const SizedBox(height: 10),
                  CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                      height: 140,
                      enlargeCenterPage: true,
                      // aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 6),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 1000),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 1,
                  //   height: 140,
                  //   // color: Colors.purpleAccent,
                  //   child: const Image(
                  //       fit: BoxFit.cover,
                  //       image: AssetImage("assets/images/workout.jpg")),
                  // )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose activity",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: darkBlue,
                    ),
                  ),
                  SizedBox(
                    height: 140,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(10),
                      itemCount: 4,
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 12);
                      },
                      itemBuilder: (context, index) {
                        return ActivityCard(index: index);
                      },
                    ),
                  )
                ],
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Venue nearby",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: darkBlue,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RouteClass.getVenueRoute());
                        },
                        child: Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: lightBlue, 
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      // padding: const EdgeInsets.all(10),
                      itemCount: 4,
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 8);
                      },
                      itemBuilder: (context, index) {
                        return VenueNearbyCard(index: index);
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Activity nearby",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: darkBlue,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: lightBlue,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: .5,
                          blurRadius: 6,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mabar Badmin SBM Sabtu Pagi",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: darkBlue,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    "09 AM - 11 AM",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: darkBlue,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    "5/16 People",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: darkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 2),
                              Text(
                                "IDR 55.000",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: darkBlue,
                                ),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: darkBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "See Details",
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    color: backgroundColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            // height: ,
                            width: 100,
                            child: Stack(
                              children: const [
                                Image(
                                  image: AssetImage(
                                    "assets/images/maps_dummy2.png",
                                  ),
                                  fit: BoxFit.fill,
                                  // height: 20,
                                  // width: 100,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
