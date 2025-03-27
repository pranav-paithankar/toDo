import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get_navigation/get_navigation.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todo/constant/const.dart';
//import 'package:todo/core/route/routesName.dart';

class LoaderWidget extends StatefulWidget {
  // final double loaderSize;
  // final double logoSize;
  // final double fontSize;

  const LoaderWidget({
    super.key,
    // required this.loaderSize,
    // required this.logoSize,
    // required this.fontSize,
  });

  @override
  State<LoaderWidget> createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget> {
  double opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();
    _startFadeAnimation();
  }

  void _startFadeAnimation() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (!mounted) return;
      setState(() {
        opacityLevel = opacityLevel == 1.0 ? 0.0 : 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = getScreenWidth(context);
    double height = getScreenHeight(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        LoadingAnimationWidget.inkDrop(
          color: Colors.white,
          size: width * 0.08 + height * 0.08,
        ),
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.task_outlined,
                size: width * 0.025 + height * 0.025,
                color: textColor(),
              ),
              Text(
                "toDo",
                style: titleText(width * 0.02 + height * 0.02),
              ),
            ],
          ),
        )
      ],
    );
  }
}
