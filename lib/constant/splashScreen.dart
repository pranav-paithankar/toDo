import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:todo/core/route/routesName.dart';
import 'package:todo/core/widgets/loaderWidgets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Get.offNamed(RoutesName.userScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
              child: LoaderWidget(
                  // loaderSize: 200,
                  // logoSize: 50,
                  // fontSize: 35,
                  ))),
    );
  }
}
