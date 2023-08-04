import '../models/category_model.dart';
import '../services/assets_mangr.dart';

class AppConstants {
  static const String imageUrl =
      'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60';
  static List<String> banners = [
    AssetsManger.banner1,
    AssetsManger.banner2,
  ];
  // static List<String> categoryImage = [
  //   AssetsManger.bookImg,
  //   AssetsManger.cosmetics,
  //   AssetsManger.electronics,
  //   AssetsManger.fashion,
  //   AssetsManger.mobiles,
  //   AssetsManger.pc,
  //   AssetsManger.shoes,
  //   AssetsManger.watch
  // ];
  // static List<String> categoryName = [
  //   'Books',
  //   'cosmetics',
  //   'Electronics',
  //   'Clothes',
  //   'Mobiles',
  //   'Laptop',
  //   'Shoes',
  //   'Watch',
  // ];

  static List<CategoryModel> categoryList = [
    CategoryModel(name: 'Books', imgUrl: AssetsManger.bookImg, id: 'Books'),
    CategoryModel(
        name: 'cosmetics', imgUrl: AssetsManger.cosmetics, id: 'cosmetics'),
    CategoryModel(
        name: 'Electronics',
        imgUrl: AssetsManger.electronics,
        id: 'Electronics'),
    CategoryModel(name: 'Fashion', imgUrl: AssetsManger.fashion, id: 'Fashion'),
    CategoryModel(name: 'Mobiles', imgUrl: AssetsManger.mobiles, id: 'Mobiles'),
    CategoryModel(name: 'Laptop', imgUrl: AssetsManger.pc, id: 'Laptop'),
    CategoryModel(name: 'Shoes', imgUrl: AssetsManger.shoes, id: 'Shoes'),
    CategoryModel(name: 'Watch', imgUrl: AssetsManger.watch, id: 'Watch'),
  ];
}
