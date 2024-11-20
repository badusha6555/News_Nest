import 'dart:convert';
import 'dart:developer';

import 'package:demo_news_api/model/heading_model.dart';
import 'package:demo_news_api/model/news_model.dart';
import 'package:demo_news_api/services/secrets/const.dart';
import 'package:dio/dio.dart';

class NewsServices {
  Future<NewsHeadLineModel> fetchNewChannelHeadLineApi(String newsName) async {
    String url =
        '${SecretsChanelApi().api}=$newsName&${SecretsChanelApi().key}';

    try {
      final response = await Dio().get(url);
      log('Response data: ${response.data}');

      if (response.statusCode == 200) {
        final body = response.data;
        return NewsHeadLineModel.fromJson(body);
      } else {
        throw Exception(
            'Failed to load data with status code: ${response.statusCode}');
      }
    } catch (e) {
      log('Error fetching data: $e');
      throw Exception('Error fetching data');
    }
  }

  Future<NewsModel> fetchCategoryApi(categoryItem) async {
    String url =
        '${SecretsCategoryApi().api}=$categoryItem&${SecretsCategoryApi().key}';

    try {
      final response = await Dio().get(url);
      log('Response data: ${response.data}');

      if (response.statusCode == 200) {
        final body = response.data;
        return NewsModel.fromJson(body);
      } else {
        throw Exception(
            'Failed to load data with status code: ${response.statusCode}');
      }
    } catch (e) {
      log('Error fetching data: $e');
      throw Exception('Error fetching data');
    }
  }
}
