import 'package:get/get.dart';
import 'package:itemlist/hoembinding.dart';
import 'package:itemlist/view/home.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  Home(),
      binding: HomeBinding(),
    ),
  ];
}
