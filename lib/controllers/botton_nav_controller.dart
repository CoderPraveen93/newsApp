import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/artical_page/artical_page.dart';
import 'package:news_app/screens/home_page/home_page.dart';
import 'package:news_app/screens/profile_page/profile_page.dart';

class BottonNavController extends GetxController {
  RxInt index = 0.obs;
  List<StatelessWidget> pages = [
    const HomePage(),
    const ArticalPage(),
    const ProfilePage()
  ];
}
