import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/home_page/home_controller.dart';
import 'package:news_app/screens/home_page/widgets/hotest_news_widget.dart';
import 'package:news_app/screens/home_page/widgets/news_for_you_widget.dart';
import 'package:news_app/screens/news_detail_page/naews_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return SafeArea(
        child: Obx(
      () => Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 24, 24),
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 50, 48, 48),
        //   title: const Text(
        //     "ALL NEWS",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        //   centerTitle: true,
        // ),
        body:

            //  (homeController.hotestNewsList5.isEmpty ||
            //         homeController.newsForYouList5.isEmpty ||
            //         homeController.topBusinessNewsList5.isEmpty)
            homeController.isLoading.value==true
                ? const Center(
                    child: CupertinoActivityIndicator(
                    color: Colors.white,
                  ))
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.dashboard,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                              const Text(
                                "NEWS APP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white54,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Hotest News",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              const Spacer(),
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 16),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Obx(
                                () => Row(
                                  children: homeController.hotestNewsList5
                                      .map(
                                        (element) => HotestNewsWidget(
                                          autherFirstName:
                                              element.author![0].toString(),
                                          publishDate:
                                              "${element.publishedAt.day.toString()} hour's",
                                          onTap: () {
                                            Get.to(NaewsDetailPage(
                                              news: element,
                                            ));
                                          },
                                          img: element.urlToImage ??
                                              "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/15/news-image-2024-09-15t165823658_1726399709.jpg",
                                          authorname: element.author ??
                                              "Auther name none",
                                          headLine: element.title,
                                        ),
                                      )
                                      .toList(),
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                "News For You",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              const Spacer(),
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 16),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(
                            () => Column(
                              children: homeController.newsForYouList5
                                  .map(
                                    (element) => NewsForYouWidget(
                                        onTap: () => Get.to(
                                            NaewsDetailPage(news: element)),
                                        authFirstLatter:
                                            element.author![0].toString(),
                                        date:
                                            "${element.publishedAt.day.toString()} days ago",
                                        headline: element.title,
                                        authorName: element.author.toString(),
                                        img: element.urlToImage ??
                                            "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/15/news-image-2024-09-15t165823658_1726399709.jpg"),
                                  )
                                  .toList(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Top business news",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              const Spacer(),
                              Text(
                                "See All",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7),
                                    fontSize: 16),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(
                            () => Column(
                              children: homeController.topBusinessNewsList5
                                  .map(
                                    (element) => NewsForYouWidget(
                                        onTap: () => Get.to(
                                            NaewsDetailPage(news: element)),
                                        authFirstLatter:
                                            element.author![0].toString(),
                                        date:
                                            "${element.publishedAt.day.toString()} days ago",
                                        headline: element.title,
                                        authorName: element.author.toString(),
                                        img: element.urlToImage ??
                                            "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/15/news-image-2024-09-15t165823658_1726399709.jpg"),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
      ),
    ));
  }
}
