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
                hintText: "Data for deep link",
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
              onPressed: () => homeController.launchURL(),
              child: Obx(
                () => Text(homeController.deepLink.value),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed("/hi"),
              child: Text("data"),
            )
          ],
        ),
      ),
    );
  }
}
