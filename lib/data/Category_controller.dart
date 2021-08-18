import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper/models/category_model.dart';

class CategoryController extends GetxController {
  static const sports = CategoryModel(text: Text('Sports'), color: Colors.red);
  static const comics = CategoryModel(text: Text('Comics'), color: Colors.red);
  static const cartoon =
      CategoryModel(text: Text('Cartoon'), color: Colors.red);
  static const movies = CategoryModel(text: Text('Movies'), color: Colors.red);

  static final List<CategoryModel> all = [sports, comics, cartoon, movies];
}
