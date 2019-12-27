import 'package:flutter/material.dart';

// import './mealDetailScreen.dart';
import './dummy-data.dart';

class MealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    print(id);
    final title = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    print(categoryMeals);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        height: 200,
        decoration: BoxDecoration(color: Colors.lightGreen),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text('Hello World');
            // return MealDetailScreen(categoryMeals[index]);
            // return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
