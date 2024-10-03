import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/models/hotest_news_model.dart';

class NaewsDetailPage extends StatelessWidget {
  final Article news;
  const NaewsDetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 24, 24),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 16,
                            ),
                            Text(
                              " Back",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.network(
                        fit: BoxFit.fill,
                        news.urlToImage ??
                            "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/15/news-image-2024-09-15t165823658_1726399709.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  maxLines: 2,
                  news.title.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${news.publishedAt.day.toString()} hour's",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      child: Center(child: Text(news.author![0].toString())),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      news.author.toString(),
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  news.content ?? "content is none",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
