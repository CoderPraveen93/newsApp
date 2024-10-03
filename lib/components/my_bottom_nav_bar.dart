import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controllers/botton_nav_controller.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottonNavController bottonNavController = Get.put(BottonNavController());
    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 50, 48, 48),
                borderRadius: BorderRadius.circular(50)),
            height: 60,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      bottonNavController.index.value = 0;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut,
                      decoration: BoxDecoration(
                          color: bottonNavController.index.value == 0
                              ? Colors.amber
                              : null,
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.home,
                          color: bottonNavController.index.value == 0
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      bottonNavController.index.value = 1;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut,
                      decoration: BoxDecoration(
                          color: bottonNavController.index.value == 1
                              ? Colors.amber
                              : null,
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.book,
                          color: bottonNavController.index.value == 1
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      bottonNavController.index.value = 2;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceInOut,
                      decoration: BoxDecoration(
                          color: bottonNavController.index.value == 2
                              ? Colors.amber
                              : null,
                          borderRadius: BorderRadius.circular(100)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.settings,
                          color: bottonNavController.index.value == 2
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
