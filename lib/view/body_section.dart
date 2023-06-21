import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:shopx/view/producttile.dart';

import '../controller/productcontroller.dart';

class BodyGridWidget extends StatelessWidget {
  const BodyGridWidget({
    super.key,
    required this.productController,
  });

  final ProductController productController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () {
          if (productController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return MasonryGridView.builder(
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return ProductTile(
                  product: productController.productList[index],
                );
              });
        },
      ),
    );
  }
}
