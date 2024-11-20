import 'package:flutter/material.dart';

class NewsCategoryListProvider extends ChangeNotifier {
  List<String> categoriesList = [
    'General',
    'Entertainment',
    'Health',
    'Sports',
    'Business',
    'Technology'
  ];
  String categoryName = 'general';
  list(index) {
    categoryName = categoriesList[index];
    notifyListeners();
  }
}
