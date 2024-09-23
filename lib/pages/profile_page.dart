import 'package:book_court_app/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const MyAppBar(
      //   title: 'Profile',
      //   showBackBtn: true,
      //   subTitle: '',
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: darkBlue,
          ),
        ),
        iconTheme: IconThemeData(color: darkBlue),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        // physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //row for profile pict and name
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
              const Text("Kim Ji Soo"),
              InkWell(
                // onTap: Get.toNamed(RouteClass.getVenueRoute()),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: lightBlue,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 24,
                          color: darkBlue,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Edit Profile',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: darkBlue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
