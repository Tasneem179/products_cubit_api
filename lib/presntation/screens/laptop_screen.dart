import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_cubit_api/core/mangers/strings_manager.dart';
import 'package:products_cubit_api/model/product_model.dart';

import '../custom_widgets/custom_scaffold.dart';
import 'cubit/watch_cubit.dart';
import 'cubit/watch_state.dart';
class LaptopProductScreen extends StatelessWidget {
  const LaptopProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //dummy data
    return CustomScaffold(image: "assets/lap.jpg",title: "Laptop",price: "20000",appBar_title: "Laptop");
  }
}





