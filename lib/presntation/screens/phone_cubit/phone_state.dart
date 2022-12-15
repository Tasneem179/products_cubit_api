

import '../../../model/error_model.dart';

abstract class PhoneProductState {}

class InitPhoneState extends PhoneProductState {}

class SuccessPhoneState extends PhoneProductState {}

class FailedPhoneState extends PhoneProductState {
  final ErrorModel errorModel;

  FailedPhoneState({required this.errorModel});
}

class LoadingPhoneState extends PhoneProductState {}
