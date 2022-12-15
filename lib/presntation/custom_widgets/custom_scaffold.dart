import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products_cubit_api/core/data/local/cache_helper.dart';
import 'package:products_cubit_api/core/mangers/color_manager.dart';
import 'package:products_cubit_api/core/mangers/size_configuration.dart';
import 'package:products_cubit_api/model/product_model.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_text.dart';
import 'package:products_cubit_api/presntation/screens/details.dart';
//,required this.price,required this.product_name,required this.image, required this.appBar_title,
import 'custom_sized_box.dart';
class CustomScaffold extends StatefulWidget {
  const CustomScaffold({Key? key,required this.appBar_title, required this.image, required this.price, required this.title}) : super(key: key);
 // final String price;
 // final String product_name;
 // final String image;
final String appBar_title;
final String image;
final String price ;
final String title;

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {

  @override
  Widget build(BuildContext context) {
// custom scaffold used for dummy data only
   // final textScale = MediaQuery.of(context).textScaleFactor;
    return  Scaffold(
        backgroundColor:AppColors.color1,
        appBar: AppBar(title:
        CustomText(
            text:widget.appBar_title, fontSize: SizeConfig.s30,
            fontWeight: FontWeight.bold,
            color: AppColors.whiteColor
            )
          ,backgroundColor:  AppColors.roseColor,centerTitle: true,
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    setState(() {
                      CacheHelper.putData("show", true);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_open,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('show onBoaring next time'),
                    ],
                  ),
                ),
              ];
            })
          ],
        ),


        body:  GridView.count(
            padding: EdgeInsets.all(AppPadding.p8),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
                10,
                    (index) => Container(

                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                  ),
                  width: SizeConfig.screenW!/10,
                  height: SizeConfig.screenH!/10,
                  child: Column(
                    children: [
                      Image.asset(widget.image, fit: BoxFit.cover,height:SizeConfig.s120 ,),
                      Padding(
                        padding: const EdgeInsets.only(top:AppPadding.p5),

                      ),
                      sizedBoxComponentForHeight(height: SizeConfig.s10,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:AppPadding.p20,bottom: AppPadding.p10),

                          child: Row(
                            children: [

                              Column(
                                children: [
                                 // sizedBoxComponentForWidth(width: SizeConfig.s10,),
                                  Expanded(
                                    child: CustomText(
                                        text: widget.price,
                                        fontSize: SizeConfig.s15,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.blackColor,
                                    ),
                                  ),
                                  Expanded(
                                    child: CustomText(
                                      text: widget.title,
                                        fontSize: SizeConfig.s15,
                                        fontWeight: FontWeight.bold,
                                        color:  AppColors.blackColor),),

                                ],
                              ),
                              Expanded(child: sizedBoxComponentForWidth(width: SizeConfig.s20,)),
                              Expanded(child: FloatingActionButton.small(onPressed: (){},child:Icon(Icons.add),backgroundColor:  AppColors.roseColor ,shape:BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)) ,)),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                )
            )
        )

    );
  }
}

