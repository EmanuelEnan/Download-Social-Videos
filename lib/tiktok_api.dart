import 'dart:convert';

import 'package:digital_downloader/tiktok_model.dart';
import 'package:digital_downloader/tokens.dart';

import 'package:http/http.dart' as http;

class TiktokApi {
  Tokens tokens = Tokens();
  Future<Tiktok> collectApi(String video) async {
    String url = tokens.urlTiktok;

    Map<String, String> qParams = {
      'video_link': video,
    };

    Uri uri = Uri.parse(url);
    final finalUri = uri.replace(queryParameters: qParams);

    final response = await http.get(
      finalUri,
      headers: {
        'X-RapidAPI-Key': tokens.key,
        'X-RapidAPI-Host': tokens.host,
      },
    );
    var resp = jsonDecode(response.body.toString());
    print(resp);
    if (response.statusCode == 200) {
      print(response.statusCode);

      return Tiktok.fromJson(resp);

      // Map services = jsonDecode(resp);
      // print(resp);
      // List alt = (jsonDecode(resp) as List<dynamic>);
      // List<dynamic> alter = services['url'];
      // return alter.map((json) => Url.fromJson(json)).toList();
      // return Youtube.fromJson(jsonDecode(resp));

    } else {
      throw Exception('$Exception');
    }
  }
}
