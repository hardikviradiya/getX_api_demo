import 'package:get/get.dart';
import 'package:getx_api_demo/bindings/details_binding.dart';
import 'package:getx_api_demo/bindings/home_binding.dart';
import 'package:getx_api_demo/screens/home_screen.dart';

import '../screens/details_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: '/',
        page: () => HomeScreen(),
        binding: HomeBinding(),
        transition: Transition.fade),
    GetPage(
        name: '/details',
        page: () => DetailsScreen(),
        binding: DetailsBinding(),
        transition: Transition.fadeIn)
  ];
}
