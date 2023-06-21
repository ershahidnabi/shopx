import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/controller/productcontroller.dart';

import 'body_section.dart';
import 'header_section.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_new),
        backgroundColor: Colors.teal[800],
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: Column(
        children: [
          const HeaderWidget(),
          BodyGridWidget(productController: productController),
        ],
      ),
    );
  }
}
