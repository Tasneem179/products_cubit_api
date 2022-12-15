import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:products_cubit_api/core/data/local/cache_helper.dart';

import 'package:products_cubit_api/core/mangers/color_manager.dart';
import 'package:products_cubit_api/core/mangers/size_configuration.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_text.dart';
import 'package:products_cubit_api/presntation/screens/categories_screen.dart';
import 'package:products_cubit_api/presntation/screens/onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool ?show;
  @override
  void initState() {
    // TODO: implement initState

   CacheHelper.init();
    super.initState();




  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(

      color: AppColors.blackColor,
      width: double.infinity,
      height: double.infinity,
      child:  Center(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
          child: CircularPercentIndicator(
            radius: SizeConfig.s200,
            animationDuration: 2000,
            lineWidth: SizeConfig.s13,
            animation: true,
            percent: 1,
            center:  CustomText(
              text:"Online Shop",
              fontFamily: "Mulish",
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig.s25,
                color: AppColors.roseColorFate7
            ),

              circularStrokeCap: CircularStrokeCap.round,
             progressColor: AppColors.roseColorFate7,
              onAnimationEnd:()
              {
                setState(() {
                 show =CacheHelper.getData("show")??null;
                });
                if (show == true|| show==null )
                  Get.offAll(OnboardingScreen());
                 else
                  Get.offAll(CategoriesScreen());
              }
            ),

          ),
        ),

    );
  }
}
