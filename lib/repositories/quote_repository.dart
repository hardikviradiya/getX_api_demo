import 'package:flutter/foundation.dart';
import 'package:getx_api_demo/models/quotes_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class QuoteRepository {
  static String baseURL = "https://api.gameofthronesquotes.xyz/v1/";
  Future<List<QuotesResponse>> fetchData(String endpoint) async {
    String url = baseURL + endpoint;
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        return data.map((e) => QuotesResponse.fromJson(e)).toList();
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching data: $e');
      }
      throw Exception('Failed to fetch data');
    }
    return [];
  }
}
