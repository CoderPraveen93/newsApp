import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/my_bottom_nav_bar.dart';
import 'package:news_app/controllers/botton_nav_controller.dart';

class AllPageController extends StatelessWidget {
  const AllPageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottonNavController bottonNavController = Get.put(BottonNavController());
    return Obx(() => Scaffold(
          body: bottonNavController.pages[bottonNavController.index.value],
          floatingActionButton: const MyBottomNavBar(),
        ));
  }
}
