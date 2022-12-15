import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products_cubit_api/core/mangers/color_manager.dart';
import 'package:products_cubit_api/core/mangers/size_configuration.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_text.dart';

import '../screens/bag_screen.dart';
class CustomCard extends StatelessWidget {
   CustomCard({Key? key,required this.image, required this.Category}) : super(key: key);
final String image;
final String Category;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: AppColors.color1,

        child:Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              ),
                child: Image.asset(image, fit: BoxFit.fill, width: SizeConfig.s400,height: SizeConfig.s200,)
            ),
            Container(
              height: SizeConfig.s200,
              width: SizeConfig.s400,
              decoration: BoxDecoration(

                gradient: LinearGradient(
                  colors: [

                    AppColors.greyColor,
                     AppColors.wColor,



                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),

              ),
              padding: EdgeInsets.symmetric(
                  vertical: AppPadding.p10, horizontal:AppPadding.p20),
              child: Center(
                child: CustomText(
                 text: Category,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                  fontSize: SizeConfig.s20,
                ),
              ),
            ),
          ],
        )
    );
  }
}
