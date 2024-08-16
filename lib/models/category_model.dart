import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    // add the categories to the list
    categories.add(CategoryModel(
      name: 'Bible Study',
      iconPath: '/assets/icons/Bible.svg',
      boxColor: Color.fromARGB(255, 202, 112, 218),
    ));

    categories.add(CategoryModel(
      name: 'Bible Study',
      iconPath: '/assets/icons/Notes.svg',
      boxColor: Color.fromARGB(255, 226, 74, 181),
    ));

    categories.add(CategoryModel(
      name: 'Bible Study',
      iconPath: '/assets/icons/quiz.svg',
      boxColor: Color.fromARGB(255, 102, 206, 219),
    ));

    categories.add(CategoryModel(
      name: 'Bible Study',
      iconPath: '/assets/icons/quotes.svg',
      boxColor: Color.fromARGB(255, 151, 107, 107),
    ));

    return categories;
  }
}
