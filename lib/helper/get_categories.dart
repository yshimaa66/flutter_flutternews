import 'package:flutter_flutternews/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categoriesList = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  // 1st category
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl = "assets/business.jpeg";
  categoriesList.add(categoryModel);

  // 2nd category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "assets/entertainment.png";
  categoriesList.add(categoryModel);

  // 3rd category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "assets/general.png";
  categoriesList.add(categoryModel);

  // 4th category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "assets/health.jpg";
  categoriesList.add(categoryModel);

  // 5th category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "assets/science.jpg";
  categoriesList.add(categoryModel);

  // 6th category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "assets/sport.png";
  categoriesList.add(categoryModel);

  // 7th category
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "assets/technology.png";
  categoriesList.add(categoryModel);

  return categoriesList;
}