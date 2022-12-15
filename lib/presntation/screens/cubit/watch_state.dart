

import '../../../model/error_model.dart';

abstract class WatchProductState {}

class InitProductState extends WatchProductState {}

class SuccessProductState extends WatchProductState {}

class FailedProductState extends WatchProductState {
  final ErrorModel errorModel;

  FailedProductState({required this.errorModel});
}

class LoadingProductState extends WatchProductState {}
