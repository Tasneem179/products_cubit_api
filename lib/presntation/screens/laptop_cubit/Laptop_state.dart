

import '../../../model/error_model.dart';

abstract class LaptopProductState {}

class InitLaptopState extends LaptopProductState {}

class SuccessLaptopState extends LaptopProductState {}

class FailedLaptopState extends LaptopProductState {
  final ErrorModel errorModel;

  FailedLaptopState({required this.errorModel});
}

class LoadingLaptopState extends LaptopProductState {}
