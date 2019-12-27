import 'package:flutter/material.dart';
import './dummy-data.dart';
import './categorylist.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children:
          DUMMY_CATEGORIES.map((category) => CategoryList(category)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
