import 'dart:convert';

import 'package:get/get.dart';
// import 'package:news_app/models/hotest_news_model.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/hotest_news_model.dart';

class HomeController extends GetxController {
  //var hotestNewsList = RxList<Article>();
  RxList<Article> hotestNewsList = <Article>[].obs;
  RxList<Article> newsForYouList = <Article>[].obs;
  RxList<Article> hotestNewsList5 = <Article>[].obs;
  RxList<Article> newsForYouList5 = <Article>[].obs;
  RxList<Article> topBusinessNewsList = <Article>[].obs;
  RxList<Article> topBusinessNewsList5 = <Article>[].obs;
  RxList<Article> searchNewsList = <Article>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    hotestNewsApi();
    newsForYouData();
    topBusinessNews();
    print(hotestNewsList5.isEmpty);
    print(newsForYouList5.isEmpty);
    print(topBusinessNewsList5.isEmpty);

    super.onInit();
  }

  Future<RxList<Article>> hotestNewsApi() async {
    isLoading.value = true;
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5a8bd3fc031b440ca89d5c1d2ef50576"));

    try {
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        var articles = data["articles"];
        for (Map<String, dynamic> index in articles) {
          hotestNewsList.add(Article.fromJson(index));
        }
        hotestNewsList5.value = hotestNewsList.sublist(0, 5);
        isLoading.value = false;
        return hotestNewsList;
      } else {
        isLoading.value = false;
        return hotestNewsList;
      }
    } catch (e) {}
    return hotestNewsList;
  }

  Future<RxList<Article>> newsForYouData() async {
    isLoading.value = true;
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=5a8bd3fc031b440ca89d5c1d2ef50576"));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var articles = data["articles"];
      for (Map<String, dynamic> index in articles) {
        newsForYouList.add(Article.fromJson(index));
      }
      newsForYouList5.value = newsForYouList.sublist(0, 2);
      isLoading.value = false;
      return newsForYouList;
    } else {
      isLoading.value = false;
      return newsForYouList;
    }
  }

  Future<RxList<Article>> topBusinessNews() async {
    isLoading.value = true;
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=5a8bd3fc031b440ca89d5c1d2ef50576"));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var articles = data["articles"];
      for (Map<String, dynamic> index in articles) {
        topBusinessNewsList.add(Article.fromJson(index));
      }
      topBusinessNewsList5.value = topBusinessNewsList.sublist(0, 5);
      isLoading.value = false;
      return topBusinessNewsList;
    } else {
      isLoading.value = false;
      return topBusinessNewsList;
    }
  }

  Future<RxList<Article>> searchNews(String seachText) async {
    isLoading.value = true;
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=$seachText&from=2024-09-01&sortBy=publishedAt&apiKey=5a8bd3fc031b440ca89d5c1d2ef50576"));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var articles = data["articles"];
      int i = 0;
      for (Map<String, dynamic> index in articles) {
        searchNewsList.add(Article.fromJson(index));
        i++;
        if (i == 10) {
          break;
        }
      }
      // topBusinessNewsList5.value = topBusinessNewsList.sublist(0, 5);
      isLoading.value = false;
      return searchNewsList;
    } else {
      isLoading.value = false;
      return searchNewsList;
    }
  }
}
