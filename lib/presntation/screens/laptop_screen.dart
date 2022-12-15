import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:products_cubit_api/core/mangers/size_configuration.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/model/product_model.dart';
import 'package:products_cubit_api/presntation/screens/laptop_cubit/Laptop_cubit.dart';
import 'package:products_cubit_api/presntation/screens/laptop_cubit/Laptop_state.dart';

import '../../core/mangers/color_manager.dart';
import '../custom_widgets/custom_gridview.dart';
import '../custom_widgets/custom_scaffold.dart';
import '../custom_widgets/custom_text.dart';
import 'cubit/watch_cubit.dart';
import 'cubit/watch_state.dart';
class LaptopProductScreen extends StatelessWidget {
  const LaptopProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //dummy data
    return BlocBuilder<LaptopCubit, LaptopProductState>(
      builder: (context, state) {
        return  Scaffold(
          backgroundColor: AppColors.color1,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.roseColor,
            title: const CustomText(
              text: StringsManager.smart_phone,
              color: AppColors.whiteColor,
              fontSize: SizeConfig.s30,
            ),
          ),
          body: (state is FailedLaptopState)
              ? Center(
            child: CustomText(
              text: state.errorModel.message,
              color: AppColors.whiteColor,
              fontSize: SizeConfig.s25,
            ),
          )
              :(state is SuccessLaptopState)?CustomGridView(product: context.watch<LaptopCubit>().Laptops)
              :const Center(
            child: SpinKitFadingCube(
              color: AppColors.roseColor,
              size: SizeConfig.s50,
            ),
          ),
        );
      },
    );
  }
}





