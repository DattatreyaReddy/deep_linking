import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/provider/deep_link/create.dart';
import '../../../data/provider/deep_link/handle.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxString data = "".obs;
  RxString description = "".obs;
  RxString imageUrl = "".obs;
  RxString title = "".obs;
  RxString deepLink = "".obs;

  void createDeepLinkInHome() async {
    deepLink.value = await createDeepLink(
      data: data.value,
      description: description.value,
      imageUrl: Uri.parse(imageUrl.value),
      title: title.value,
    );
  }

  void launchURL() async {
    await launch(deepLink.value);
  }

  @override
  void onInit() {
    super.onInit();
    handleDeepLink();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
