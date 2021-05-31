import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/handled_link_controller.dart';

class HandledLinkView extends GetView<HandledLinkController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HandledLinkView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Navigated using Deep Link',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
