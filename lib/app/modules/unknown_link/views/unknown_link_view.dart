import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/unknown_link_controller.dart';

class UnknownLinkView extends GetView<UnknownLinkController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnknownLinkView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Navigated using deep Link with \nUrl: ${Get.arguments}, \nData: ${Get.parameters}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
