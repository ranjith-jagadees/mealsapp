import 'package:flutter/material.dart';

enum Complexity { Simple, Challenging, Hard }
enum Affordability { Affordable, Luxurious, Pricey }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final Complexity complexity;
  final Affordability affordability;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  const Meal(
      {@required this.id,
      @required this.categories,
      @required this.title,
      @required this.complexity,
      @required this.affordability,
      @required this.duration,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.isGlutenFree,
      @required this.isLactoseFree,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.steps});
}
