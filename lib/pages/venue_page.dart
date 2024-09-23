import 'package:book_court_app/components/app_bar.dart';
import 'package:book_court_app/components/search_bar.dart';
import 'package:book_court_app/components/venue_card.dart';
import 'package:book_court_app/const.dart';
import 'package:book_court_app/data/venue_data.dart';
import 'package:book_court_app/model/venue_model.dart';
import 'package:flutter/material.dart';

class VenuePage extends StatefulWidget {
  const VenuePage({super.key});

  @override
  State<VenuePage> createState() => VenuePageState();
}

class VenuePageState extends State<VenuePage> {
  List<Venue> allVenueData = venueData;
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Venue",
        subTitle: "Badminton",
        showBackBtn: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // search bar here
                  SearchBar(text: query, onChanged: searchVenue),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: darkBlue,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.filter_alt,
                        color: lightBlue,
                        size: 20,
                      ),
                      onPressed: showFilterDialog,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  // padding: const EdgeInsets.all(10),
                  itemCount: allVenueData.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    final venue = allVenueData[index];
                    return VenueCard(venue: venue);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void searchVenue(String query) {
    setState(() {
      this.query = query;
      if (query.isEmpty) {
        allVenueData = venueData;
      } else {
        allVenueData = venueData.where((venue) {
          final venueName = venue.venueName.toString().toLowerCase();
          final searchLower = query.toLowerCase();

          return venueName.contains(searchLower);
        }).toList();
      }
    });
  }

  void showFilterDialog() {
    showDialog(
      context: context,
      builder: (context) {
        // Set up the list of filter options
        final filterOptions = [
          {'label': 'Distance', 'value': 'distance'},
          {'label': 'Rating', 'value': 'rating'},
        ];

        // Variables to store the selected filter options
        String selectedFilter = '';
        String selectedOption = '';

        return AlertDialog(
          title: const Text('Filter Venue'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Create a radio button group for filter options
              ...filterOptions.map((option) {
                return ListTile(
                  title: Text(option['label']!),
                  leading: Radio(
                    value: option['value'],
                    groupValue: selectedFilter,
                    onChanged: (value) {
                      setState(() {
                        selectedFilter = value.toString();
                      });
                    },
                  ),
                );
              }).toList(),
              // Create a dropdown for the selected filter option
              if (selectedFilter.isNotEmpty) ...[
                const SizedBox(height: 20),
                Text('Select ${selectedFilter.toLowerCase()} option'),
                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: 'option1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'option2',
                      child: Text('Option 2'),
                    ),
                    DropdownMenuItem(
                      value: 'option3',
                      child: Text('Option 3'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  value: selectedOption,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                  ),
                ),
              ],
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog and apply the selected filters
                setState(() {
                  // Apply the selected filters to the venue data
                  allVenueData = venueData.where((venue) {
                    // Filter based on the selected filter options
                    // For example, you can filter by distance or rating
                    // based on the selectedFilter and selectedOption variables
                    return true;
                  }).toList();
                });
                Navigator.pop(context);
              },
              child: const Text('Apply'),
            ),
          ],
        );
      },
    );
  }
}
