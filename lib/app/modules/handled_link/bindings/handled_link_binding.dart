import 'package:get/get.dart';

import '../controllers/handled_link_controller.dart';

class HandledLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HandledLinkController>(
      () => HandledLinkController(),
    );
  }
}
