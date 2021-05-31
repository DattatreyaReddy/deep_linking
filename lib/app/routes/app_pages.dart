import 'package:get/get.dart';

import '../modules/handled_link/bindings/handled_link_binding.dart';
import '../modules/handled_link/views/handled_link_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/unknown_link/bindings/unknown_link_binding.dart';
import '../modules/unknown_link/views/unknown_link_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HANDLED_LINK,
      page: () => HandledLinkView(),
      binding: HandledLinkBinding(),
    ),
    GetPage(
      name: _Paths.UNKNOWN_LINK,
      page: () => UnknownLinkView(),
      binding: UnknownLinkBinding(),
    ),
  ];
  static final unknown = GetPage(
    name: _Paths.UNKNOWN_LINK,
    page: () => UnknownLinkView(),
    binding: UnknownLinkBinding(),
  );
}
