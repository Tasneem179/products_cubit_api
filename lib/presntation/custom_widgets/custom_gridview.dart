import 'package:flutter/material.dart';
import 'package:products_cubit_api/model/product_model.dart';

import '../../core/mangers/color_manager.dart';
import '../../core/mangers/size_configuration.dart';
import 'custom_sized_box.dart';
import 'custom_text.dart';
class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key, required this.product}) : super(key: key);
final List <ProductModel> product;
  @override
  Widget build(BuildContext context) {
    // it will take product list from cubit and display it
    return GridView.count(
        padding: EdgeInsets.all(AppPadding.p8),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(
            product.length,
                (index) => Container(

              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
              width: SizeConfig.screenW!/10,
              height: SizeConfig.screenH!/10,
              child: Column(
                children: [
                  Image.network(product[index].images, fit: BoxFit.cover,height:SizeConfig.s120 ,),
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
                                  text: product[index].price.toString(),
                                  fontSize: SizeConfig.s15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor,
                                ),
                              ),
                              Expanded(
                                child: CustomText(
                                    text: product[index].title,
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
    );
  }
}
