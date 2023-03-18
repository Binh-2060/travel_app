import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: changePage,
        hasNotch: false,
        opacity: 0.2,
        borderRadius: const BorderRadius.vertical(
            top: Radius.circular(
                16)), //border radius doesn't work when the notch is enabled.
        elevation: 8,
        items: const <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.map,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.map,
              color: Colors.blue,
            ),
            title: Text(
              'Map',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.favorite_border,
              color: Colors.blue,
            ),
            title: Text(
              'Favorite',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: const Text(
                'Explore ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
