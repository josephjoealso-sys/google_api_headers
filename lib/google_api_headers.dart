library google_api_headers;

import 'dart:io';
import 'package:http/http.dart' as http;

class GoogleApiHeaders {
  /// Returns headers for Google API requests
  Future<Map<String, String>> getHeaders() async {
    return {
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
    };
  }

  /// Makes a GET request to test the headers
  Future<http.Response> testRequest(String url) async {
    final headers = await getHeaders();
    return await http.get(Uri.parse(url), headers: headers);
  }
}
