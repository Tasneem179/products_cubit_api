import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:products_cubit_api/core/mangers/color_manager.dart';
import 'package:products_cubit_api/core/mangers/size_configuration.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_gridview.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_text.dart';

import '../custom_widgets/custom_scaffold.dart';
import '../custom_widgets/custom_sized_box.dart';
import 'cubit/watch_cubit.dart';
import 'cubit/watch_state.dart';
class WatchProductScreen extends StatelessWidget {
  const WatchProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // data from API using Cubit
    return BlocBuilder<WatchCubit, WatchProductState>(
      builder: (context, state) {
        return  Scaffold(
          backgroundColor: AppColors.color1,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.roseColor,
            title: const CustomText(
              text: StringsManager.watch,
              color: AppColors.whiteColor,
              fontSize: SizeConfig.s25,
            ),
          ),
          body: (state is FailedProductState)
              ? Center(
            child: CustomText(
              text: state.errorModel.message,
              color: AppColors.whiteColor,
              fontSize: SizeConfig.s25,
            ),
          )
              :(state is SuccessProductState)?CustomGridView(product: context.watch<WatchCubit>().watches)
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