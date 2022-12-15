import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:products_cubit_api/core/data/remote/network/network_service.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/model/product_model.dart';

import 'package:products_cubit_api/presntation/screens/cubit/watch_state.dart';

import '../../../core/constants/app_constants.dart';
import '../../../model/error_model.dart';



class WatchCubit extends Cubit<WatchProductState> {
  List<ProductModel> watches=[] ;

  WatchCubit() : super(InitProductState());

  static WatchCubit instance(context) => BlocProvider.of(context);

  void getWatch() async {
    emit(LoadingProductState());
    try {
      Response response = await NetworkService.getData(
          endPoint: AppConstants.watchEndPoint);
      if (response.statusCode == 200) {
        List result = (response.data['products']) as List;
        watches = result.map((WatchProduct) => ProductModel.fromJson(WatchProduct)).toList();
        emit(SuccessProductState());
      }

    } on DioError catch (error) {
      ErrorModel errorModel = ErrorModel(message: error.response!.statusMessage!);
      emit(FailedProductState(errorModel: errorModel));
     }


  }
}
//catch(error)
// {
//   ErrorModel errorModel = ErrorModel(message: "no thing");
//   emit(FailedProductState(errorModel: errorModel));
// }

