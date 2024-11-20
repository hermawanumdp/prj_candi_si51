import 'package:flutter/material.dart';
import 'package:prj_candi_si51/screens/favorit_screen.dart';
import 'package:prj_candi_si51/screens/home_screen.dart';
import 'package:prj_candi_si51/screens/profile_screen.dart';
import 'package:prj_candi_si51/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //TODO 1 variabel
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoritScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2 BODY
      body: _children[_currentIndex],
      //TODO 3 BottomNavigation Bar
      bottomNavigationBar: Theme(
          //TODO 4 Data dan child dari theme
          data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite, color: Colors.deepPurple),
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  label: "Profile")
            ],
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurple[100],
            showSelectedLabels: true,
          )),
    );
  }
}
