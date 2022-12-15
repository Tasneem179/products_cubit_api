import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:products_cubit_api/core/data/remote/network/network_service.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/model/product_model.dart';


import 'package:products_cubit_api/presntation/screens/phone_cubit/phone_state.dart';

import '../../../core/constants/app_constants.dart';
import '../../../model/error_model.dart';



class PhoneCubit extends Cubit<PhoneProductState> {
  List<ProductModel> phones=[] ;

  PhoneCubit() : super(InitPhoneState());

  static PhoneCubit instance(context) => BlocProvider.of(context);

  void getPhone() async {
    emit(LoadingPhoneState());
    try {
      Response response = await NetworkService.getData(
          endPoint: AppConstants.smartPhoneEndPoint);
      if (response.statusCode == 200) {
        List result = (response.data['products']) as List;
        phones = result.map((PhoneProduct) => ProductModel.fromJson(PhoneProduct)).toList();
        emit(SuccessPhoneState());
      }

    } on DioError catch (error) {
      ErrorModel errorModel = ErrorModel(message: error.response!.statusMessage!);
      emit(FailedPhoneState(errorModel: errorModel));
     }


  }
}
//catch(error)
// {
//   ErrorModel errorModel = ErrorModel(message: "no thing");
//   emit(FailedProductState(errorModel: errorModel));
// }

