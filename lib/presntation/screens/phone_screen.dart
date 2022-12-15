import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';

import '../custom_widgets/custom_scaffold.dart';
import 'cubit/watch_cubit.dart';
import 'cubit/watch_state.dart';
class PhoneProductScreen extends StatelessWidget {
  const PhoneProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //dummy data
  return  CustomScaffold(price: "price:5000", title: "smart phone", image: "assets/smart.jpg", appBar_title: "Smart Phone");
  }
}