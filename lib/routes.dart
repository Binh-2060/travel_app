import 'package:travel_app/details.dart';
import 'package:travel_app/explore.dart';
import 'package:travel_app/home.dart';

var routes = {
  '/': (context) => const HomeScreen(),
  "/details": (context) => const Details(),
  '/explore': (context) => const ExplorePage()
};
