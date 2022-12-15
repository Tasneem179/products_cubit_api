import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products_cubit_api/core/mangers/color_manager.dart';
import 'package:products_cubit_api/model/categories_types_model.dart';


import '../custom_widgets/custom_card.dart';

class CategoriesScreen extends StatelessWidget {

   CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Container(
    color: AppColors.roseColorFate7,
    child: ListView.builder(itemCount:Categories.length,itemBuilder: (BuildContext context, int index) {
      return GestureDetector(onTap:(

          ){
        Get.to(Categories[index].screen);
      },
          child: CustomCard(image:Categories[index].image, Category:Categories[index].name,));
    }),
    ),
    );

  }
}
