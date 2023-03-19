import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/routes.dart';

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
    routes:
    {
      routes:
      routes;
    }
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: const Text(
                  'Explore ',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 10),
                child: const Text(
                  'Find a place for yourself',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 253, 253),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(fontSize: 17),
                        hintText: 'Search ',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Hotels',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                      Text(
                        'Things to do',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Events',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Sights',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/details');
                        },
                        child: Card(
                          child: Image.network(
                              'https://images.unsplash.com/photo-1552733407-5d5c46c3bb3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=780&q=80'),
                        ),
                      ),
                    ],
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
