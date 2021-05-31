import 'package:get/get.dart';

import '../controllers/unknown_link_controller.dart';

class UnknownLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnknownLinkController>(
      () => UnknownLinkController(),
    );
  }
}
