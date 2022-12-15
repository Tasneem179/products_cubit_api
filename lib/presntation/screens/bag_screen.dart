import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:products_cubit_api/core/mangers/size_configuration.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_card.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_scaffold.dart';
import 'package:products_cubit_api/presntation/screens/bag_cubit/Bag_cubit.dart';
import 'package:products_cubit_api/presntation/screens/bag_cubit/Bag_state.dart';

import '../../core/mangers/color_manager.dart';
import '../custom_widgets/custom_gridview.dart';
import '../custom_widgets/custom_text.dart';
import 'cubit/watch_cubit.dart';
import 'cubit/watch_state.dart';
class BagProductScreen extends StatelessWidget {
  const BagProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //dummy data
    return BlocBuilder<BagCubit, BagProductState>(
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
          body: (state is FailedBagState)
              ? Center(
            child: CustomText(
              text: state.errorModel.message,
              color: AppColors.whiteColor,
              fontSize: SizeConfig.s25,
            ),
          )
              :(state is SuccessBagState)?CustomGridView(product: context.watch<BagCubit>().bags)
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




