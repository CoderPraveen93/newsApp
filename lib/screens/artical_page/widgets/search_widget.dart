import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/home_page/home_controller.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    TextEditingController searchController = TextEditingController();
    return SizedBox(
      height: 50,
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () {
              homeController.searchNews(searchController.text);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10, top: 4, bottom: 4),
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 192, 65),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          filled: true,
          hintText: "Search hear...",
          fillColor: Colors.grey,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
