import 'package:get/get.dart';
import 'package:route_nav/Pages/hal_1.dart';
import 'package:route_nav/Pages/hal_2.dart';
import 'package:route_nav/Pages/hal_3.dart';
import 'package:route_nav/Pages/hal_4.dart';
import 'package:route_nav/main.dart';

import 'route_name.dart';

class PagesRoute {
  static final pages = [
    GetPage(name: RoutesName.home, page: () => const MyApp()),
    GetPage(name: RoutesName.hal1, page: () => const Hal1()),
    GetPage(name: RoutesName.hal2, page: () => const Hal2()),
    GetPage(name: RoutesName.hal3, page: () => const Hal3()),
    GetPage(name: RoutesName.hal4, page: () => const Hal4()),
  ];
}

class Halaman4 {
  const Halaman4();
}
