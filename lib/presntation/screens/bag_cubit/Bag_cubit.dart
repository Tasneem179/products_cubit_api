import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:products_cubit_api/core/data/remote/network/network_service.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/model/product_model.dart';
import 'package:products_cubit_api/presntation/screens/bag_cubit/Bag_state.dart';

import 'package:products_cubit_api/presntation/screens/cubit/watch_state.dart';

import '../../../core/constants/app_constants.dart';
import '../../../model/error_model.dart';



class BagCubit extends Cubit<BagProductState> {
  List<ProductModel> bags=[] ;

  BagCubit() : super(InitBagState());

  static BagCubit instance(context) => BlocProvider.of(context);

  void getBag() async {
    emit(LoadingBagState());
    try {
      Response response = await NetworkService.getData(
          endPoint: AppConstants.watchEndPoint);
      if (response.statusCode == 200) {
        List result = (response.data['products']) as List;
        bags = result.map((WatchProduct) => ProductModel.fromJson(WatchProduct)).toList();
        emit(SuccessBagState());
      }

    } on DioError catch (error) {
      ErrorModel errorModel = ErrorModel(message: error.response!.statusMessage!);
      emit(FailedBagState(errorModel: errorModel));
     }


  }
}
//catch(error)
// {
//   ErrorModel errorModel = ErrorModel(message: "no thing");
//   emit(FailedProductState(errorModel: errorModel));
// }

