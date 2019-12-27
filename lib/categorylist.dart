import 'package:flutter/material.dart';
import './models/category.dart';

class CategoryList extends StatelessWidget {
  final Category category;
  CategoryList(this.category);

  void mealScreenFunction(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('mealScreen', arguments: {'id': category.id, 'title':category.title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.amber,
      onTap: () => mealScreenFunction(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          category.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [category.color.withOpacity(0.5), category.color],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
