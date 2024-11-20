//

import 'package:demo_news_api/model/heading_model.dart';
import 'package:demo_news_api/model/news_model.dart';
import 'package:demo_news_api/services/services.dart';
import 'package:flutter/material.dart';

class NewsProvider extends ChangeNotifier {
  final NewsServices newsServices = NewsServices();

  // ignore: non_constant_identifier_names
  Future<NewsHeadLineModel> fetchNewsChaneelHeadLine(String channelName) async {
    try {
      return await newsServices.fetchNewChannelHeadLineApi(channelName);
    } catch (e) {
      throw Exception('Error fetching news channel headlines');
    }
  }

  // ignore: non_constant_identifier_names
  Future<NewsModel> fetchCategory(String category) async {
    try {
      return await newsServices.fetchCategoryApi(category);
    } catch (e) {
      throw Exception('Error fetching category news');
    }
  }
}
