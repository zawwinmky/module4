import 'package:flutter/material.dart';

void main() {
  runApp(
    const BottomNavBar(),
  );
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var currentIndex = 0;
  var widgetsToShow = [
    const Text("Home"),
    const Text("Trending"),
    const Text("Library"),
    const Text("Search"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: widgetsToShow[currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Home"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.trending_up), label: "Trending"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.library_add), label: "Library"),
              BottomNavigationBarItem(
                activeIcon:Image.asset(
                  "assets/icons/search.png",
                  width: 24,
                  height: 24,
                  color: Colors.blue,
                ) ,
                  icon: Image.asset(
                    "assets/icons/search.png",
                    width: 24,
                    height: 24,
                    color: Colors.grey,
                  ),
                  label: "Search")
            ],
            currentIndex: currentIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            onTap: (selectedIndex) {
              setState(() {
                currentIndex = selectedIndex;
              });
            },
          ),
        ),
      ),
    );
  }
}
