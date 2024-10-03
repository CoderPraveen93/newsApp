import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/artical_page/widgets/search_widget.dart';
import 'package:news_app/screens/home_page/home_controller.dart';
import 'package:news_app/screens/home_page/widgets/news_for_you_widget.dart';
import 'package:news_app/screens/news_detail_page/naews_detail_page.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 24, 24),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SearchWidget(),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => homeController.isLoading.value == true
                      ? const Center(
                          child: CupertinoActivityIndicator(
                          color: Colors.white,
                        ))
                      : Column(
                          children: homeController.searchNewsList
                              .map(
                                (element) => NewsForYouWidget(
                                    onTap: () {
                                      Get.to(NaewsDetailPage(news: element));
                                    },
                                    authFirstLatter:
                                        element.author![0].toString(),
                                    date:
                                        "${element.publishedAt.day.toString()} days ago",
                                    headline: element.description ??
                                        "हर डॉक्टर की होगी यूनिक आईडी:NMC पोर्टल पर रजिस्ट्रेशन जरूरी, पता चलेगा देश में कुल कितने डॉक्टर और उनके पास कौन सी डिग्री",
                                    authorName: element.author.toString(),
                                    img: element.urlToImage ??
                                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/15/news-image-2024-09-15t165823658_1726399709.jpg"),
                              )
                              .toList(),
                        ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
