import 'package:flutter/cupertino.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/presntation/screens/laptop_screen.dart';
import 'package:products_cubit_api/presntation/screens/watch_screen.dart';

import '../presntation/screens/bag_screen.dart';
import '../presntation/screens/phone_screen.dart';

class Category{
  final String name;
  final String image;
  final Widget screen;

  Category({required this.name, required this.image,required this.screen});
}

List<Category> Categories=[
  Category(name: StringsManager.smart_phone, image: "assets/smart1.jpg",screen: PhoneProductScreen()),
  Category(name: StringsManager.laptop, image: "assets/lap2.jpg",screen: LaptopProductScreen()),
  Category(name: StringsManager.watch, image: "assets/watch.jfif",screen: WatchProductScreen()),
  Category(name: StringsManager.bag, image: "assets/bag.jpg",screen:BagProductScreen()),
];

//smart phone, laptops, men's-watches, woman-bags