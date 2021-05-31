import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Data for deep link (ex: hello?hi=12)",
              ),
              onChanged: (value) => homeController.data.value = value,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Description for deep link",
              ),
              onChanged: (value) => homeController.description.value = value,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Image Url for deep link",
              ),
              onChanged: (value) => homeController.imageUrl.value = value,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Title for deep link",
              ),
              onChanged: (value) => homeController.title.value = value,
            ),
            TextButton(
              onPressed: () => homeController.createDeepLinkInHome(),
              child: Text("Create Deep Link"),
            ),
            TextButton(
              onPressed: () => homeController.launchURL(homeController.deepLink.value),
              child: Obx(
                () => Text(homeController.deepLink.value),
              ),
            ),
            TextButton(
              onPressed: () => homeController.launchURL("https://deeplinkingpadya.page.link/iGuj"),
              child: Text("https://deeplinkingpadya.page.link/iGuj - Deep Link Handling"),
            )
          ],
        ),
      ),
    );
  }
}
