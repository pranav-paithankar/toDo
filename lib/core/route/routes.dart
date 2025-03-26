import 'package:get/get.dart';
import 'package:todo/constant/splashScreen.dart';
import 'package:todo/core/route/routesName.dart';
import 'package:todo/features/auth/presentation/pages/user_page.dart';

class Routes {
  static final pages = [
    GetPage(name: RoutesName.splashScreen, page: () => const Splashscreen()),
    GetPage(name: RoutesName.userScreen, page: () => UserPage())
  ];
}
