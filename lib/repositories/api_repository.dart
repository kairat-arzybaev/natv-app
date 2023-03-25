import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:natv_app/models/channel.dart';

class ApiRepository {
  static Future<List<TVChannel>> getChannelsList() async {
    String url = 'https://app1.megacom.kg:9090/test_task/api/v1/channel/list';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<TVChannel> channels =
          jsonDecode(utf8.decode(response.bodyBytes))
              .map<TVChannel>(TVChannel.fromJson)
              .toList();
      return channels;
    } else {
      throw Exception('Failed to load Tv channels - ${response.statusCode}');
    }
  }
}
