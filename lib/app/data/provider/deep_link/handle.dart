import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:get/get.dart';

void handleDeepLink() async {
  final PendingDynamicLinkData? data =
      await FirebaseDynamicLinks.instance.getInitialLink();
  final Uri? deepLink = data?.link;

  FirebaseDynamicLinks.instance.onLink(
    onSuccess: (PendingDynamicLinkData? data) async {
      final Uri? deepLink = data?.link;
      if (deepLink != null)
        Get.toNamed(deepLink.path, parameters: data?.link.queryParameters);
    },
    onError: (OnLinkErrorException e) async {
      print('onLinkError');
      print(e.message);
    },
  );

  if (deepLink != null)
    Get.toNamed(deepLink.path, parameters: data?.link.queryParameters);
}
