import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:products_cubit_api/core/data/local/cache_helper.dart';
import 'package:products_cubit_api/core/data/remote/network/network_service.dart';
import 'package:products_cubit_api/presntation/screens/bag_cubit/Bag_cubit.dart';
import 'package:products_cubit_api/presntation/screens/cubit/watch_cubit.dart';
import 'package:products_cubit_api/presntation/screens/laptop_cubit/Laptop_cubit.dart';
import 'package:products_cubit_api/presntation/screens/phone_cubit/phone_cubit.dart';
import 'package:products_cubit_api/presntation/screens/splash_screen.dart';



void main() {
 NetworkService.initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:
    [
      BlocProvider(create: (context) => WatchCubit()..getWatch(),),
      BlocProvider(create: (context) => PhoneCubit()..getPhone(),),
      BlocProvider(create: (context) => BagCubit()..getBag(),),
      BlocProvider(create: (context) => LaptopCubit()..getLatop(),),
    ],

      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

