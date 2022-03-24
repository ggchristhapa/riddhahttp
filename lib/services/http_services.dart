
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class RiddhaHttpService {
  http.Client _client = http.Client();
  RiddhaHttpService() {
    _client = http.Client();
  }

//Get method
  Future<Map<String, dynamic>> get(String url,
      {Map<String, String>? headers}) async {
    var response = await _client.get(Uri.parse(url),
        headers: headers ??
            <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'Accept-Encoding': 'gzip',
            });
    if (response.statusCode == HttpStatus.ok) {
      return jsonDecode(response.body);
    } else {
      return {};
    }
  }

//Post Method
  Future<Map<String, dynamic>> post(String url, Map<String, dynamic> json,
      {Map<String, String>? headers}) async {
    var response = await _client.post(Uri.parse(url),
        headers: headers ??
            <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'Accept-Encoding': 'gzip',
            },
        body: jsonEncode(json));
    if (response.statusCode == HttpStatus.ok) {
      return jsonDecode(response.body);
    } else {
      return {};
    }
  }

//Put Method
  Future<Map<String, dynamic>> put(String url, Map<String, dynamic> json,
      {Map<String, String>? headers}) async {
    var response = await _client.put(Uri.parse(url),
        headers: headers ??
            <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'Accept-Encoding': 'gzip',
            },
        body: jsonEncode(json));
    if (response.statusCode == HttpStatus.ok) {
      return jsonDecode(response.body);
    } else {}
    return {};
  }

//Delete Method
  Future<Map<String, dynamic>> delete(String url,
      {Map<String, String>? headers}) async {
    var response = await _client.delete(
      Uri.parse(url),
      headers: headers ??
          <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Accept-Encoding': 'gzip',
          },
    );
    if (response.statusCode == HttpStatus.ok) {
      return jsonDecode(response.body);
    } else {}
    return {};
  }
}
