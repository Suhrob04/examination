import 'package:flutter/material.dart';
import 'package:mybigexam/constants/export_pages.dart';
import 'package:mybigexam/screens/home/home_page.dart';
import 'package:mybigexam/screens/search/search_page.dart';

class BottomNavProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    SearchPage(),
    CartPage(),
    CalendarPage()
  ];

  set currentTab(int tab) {
    _currentIndex = tab;
    notifyListeners();
  }

  int get currentTab => _currentIndex;
  get currentScreens => _screens[_currentIndex];

  onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
