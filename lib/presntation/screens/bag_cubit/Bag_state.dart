

import '../../../model/error_model.dart';

abstract class BagProductState {}

class InitBagState extends BagProductState {}

class SuccessBagState extends BagProductState {}

class FailedBagState extends BagProductState {
   final ErrorModel errorModel;
  FailedBagState({required this.errorModel});
}

class LoadingBagState extends BagProductState {}
