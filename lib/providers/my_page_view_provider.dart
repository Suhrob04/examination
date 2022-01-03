
import 'package:flutter/material.dart';
import 'package:mybigexam/constants/icons.dart';

class CurrentPage extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  setCurrentPage(int val) {
    _currentPage = val;
    notifyListeners();
  }
}

class CurrentPageforSplash extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPageforSplash => _currentPage;

  setCurrentPage(int val) {
    _currentPage = val;

    
    notifyListeners();
  }
}
