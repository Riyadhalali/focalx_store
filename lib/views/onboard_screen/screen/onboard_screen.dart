import 'package:flutter/material.dart';
import 'package:focalx_store/core/const_data/app_color.dart';
import 'package:focalx_store/views/onboard_screen/controller/onboard_controller.dart';
import 'package:get/get.dart';

class OnboardScreen extends StatelessWidget {
  final OnboardController controller = Get.put(OnboardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      body: Obx(
        () => PageView.builder(
          itemCount: controller.onboardPages.length,
          onPageChanged: (index) {
            controller.currentPage.value = index;
          },
          itemBuilder: (context, index) {},
        ),
      ),
    );
  }
}
