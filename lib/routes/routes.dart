import 'package:book_court_app/pages/home_page.dart';
import 'package:book_court_app/pages/main_page.dart';
import 'package:book_court_app/pages/venue_page.dart';
import 'package:get/get.dart';

class RouteClass {
  static String home = "/home";
  static String main = "/main";
  static String venue = "/venue";

  static String getHomeRoute() => home;
  static String getMainRoute() => main;
  static String getVenueRoute() => venue;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: main, page: () => const MainPage()),
    GetPage(name: venue, page: () => const VenuePage()),
  ];
}
