import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:natv_app/models/channel.dart';

class ApiRepository {
  static Future<Channel> getChannel(int id) async {
    String url = 'https://app1.megacom.kg:9090/test_task/api/v1/channel/$id';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Channel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load order - ${response.statusCode}');
    }
  }

  static Future<List<Channel>> getChannelsList() async {
    String url = 'https://app1.megacom.kg:9090/test_task/api/v1/channel/list';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body).map<Channel>(Channel.fromJson).toList();
    } else {
      throw Exception('Failed to load order - ${response.statusCode}');
    }
  }
}
