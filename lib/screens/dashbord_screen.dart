import 'package:aviz_app/screens/add_aviz_screen.dart';
import 'package:aviz_app/screens/create_aviz_screen.dart';
import 'package:aviz_app/screens/main_screen.dart';
import 'package:aviz_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectedBottomNavigationIndex = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IndexedStack(
          index: selectedBottomNavigationIndex,
          children: getScreens(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              selectedBottomNavigationIndex = index;
            });
          },
          currentIndex: selectedBottomNavigationIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[100],
          elevation: 0,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'sm',
            fontSize: 14,
            color: Colors.red,
            fontWeight: FontWeight.w500,
          ),
          iconSize: 24,
          selectedItemColor: Colors.red,
          unselectedLabelStyle: TextStyle(
            fontFamily: 'sm',
            fontSize: 14,
            color: Colors.grey[100],
            fontWeight: FontWeight.w500,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/profile-circle.png'),
              activeIcon: Image.asset(
                'assets/images/profile-circle.png',
                color: Colors.red,
              ),
              label: 'آویز من',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/add-circle.png',
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                'assets/images/add-circle.png',
              ),
              label: 'افزودن آویز',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/search.png'),
              activeIcon: Image.asset(
                'assets/images/search.png',
                color: Colors.red,
              ),
              label: 'جستجو',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/aviz.png',
                color: Colors.grey,
              ),
              activeIcon: Image.asset('assets/images/aviz.png'),
              label: 'آویز آگهی ها',
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getScreens() {
    return <Widget>[
      ProfileScreen(),
      AddAvizScreen(),
      MainScreen(),
      MainScreen(),
    ];
  }
}
