import 'package:book_court_app/const.dart';
import 'package:book_court_app/pages/community_page.dart';
import 'package:book_court_app/pages/main_page.dart';
import 'package:book_court_app/pages/profile_page.dart';
import 'package:book_court_app/pages/transaction_history_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    const MainPage(),
    const TransactionHistoryPage(),
    const CommunityPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
