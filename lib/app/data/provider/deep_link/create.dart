import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

import 'constants.dart';

Future<String> createDeepLink({
  required String data,
  String? description,
  Uri? imageUrl,
  String? title,
  bool shortLink = false,
}) async {
  final DynamicLinkParameters parameters = DynamicLinkParameters(
    uriPrefix: kUriPrefix,
    link: Uri.parse(kUriPrefix + data),
    androidParameters: AndroidParameters(
      packageName: kAndroidPackageName,
      minimumVersion: kAndroidMinimumVersion,
      fallbackUrl: Uri.parse(kUriPrefix),
    ),
    iosParameters: IosParameters(
      bundleId: kIosBundleId,
      minimumVersion: kIosMinimumVersion,
    ),
    socialMetaTagParameters: SocialMetaTagParameters(
      description: description,
      imageUrl: imageUrl,
      title: title,
    ),
  );
  final ShortDynamicLink dynamicUrl = await parameters.buildShortLink();
  final Uri dynamicLongUrl = await parameters.buildUrl();

  if (shortLink) return dynamicUrl.shortUrl.toString();
  return dynamicLongUrl.toString();
}
