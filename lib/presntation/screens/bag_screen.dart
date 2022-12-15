import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_card.dart';
import 'package:products_cubit_api/presntation/custom_widgets/custom_scaffold.dart';

import 'cubit/watch_cubit.dart';
import 'cubit/watch_state.dart';
class BagProductScreen extends StatelessWidget {
  const BagProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //dummy data
   return CustomScaffold( appBar_title: "Laptop",image: "assets/bag.jpg",title: "bag",price: "500",);

  }
}




