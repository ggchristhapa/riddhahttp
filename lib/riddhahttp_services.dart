import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:riddhahttp/response_model.dart';
import 'package:riddhahttp/riddhahttp_interface.dart';

enum ResponseStatus { success, socketexception, timeoutexception }

class HttpServices extends RiddhaHttpInterface {
  http.Client _client = http.Client();
  HttpServices() {
    _client = http.Client();
  }

//Get method
  @override
  Future<RiddhaHttpResponse> get(String url,
      {Map<String, String>? headers}) async {
    try {
      http.Response response =
          await _client.get(Uri.parse(url), headers: headers ?? _header);
      return _response(response);
    } on SocketException {
      return RiddhaHttpResponse(status: false, message: 'Socket Exception');
    } on TimeoutException {
      return RiddhaHttpResponse(status: false, message: 'Timeout Exception');
    } on ProcessException {
      return RiddhaHttpResponse(status: false, message: 'Process Exception');
    } catch (e) {
      return _errorResponse(e);
    }
  }

//Post Method
  @override
  Future<RiddhaHttpResponse> post(String url, Map<String, dynamic> json,
      {Map<String, String>? headers}) async {
    try {
      var response = await _client.post(Uri.parse(url),
          headers: headers ?? _header, body: jsonEncode(json));
      return _response(response);
    } on SocketException {
      return RiddhaHttpResponse(status: false, message: 'Socket Exception');
    } on TimeoutException {
      return RiddhaHttpResponse(status: false, message: 'Timeout Exception');
    } on ProcessException {
      return RiddhaHttpResponse(status: false, message: 'Process Exception');
    } catch (e) {
      return _errorResponse(e);
    }
  }

//Put Method
  @override
  Future<RiddhaHttpResponse> put(String url, Map<String, dynamic> json,
      {Map<String, String>? headers}) async {
    try {
      var response = await _client.put(Uri.parse(url),
          headers: headers ?? _header, body: jsonEncode(json));
      return _response(response);
    } on SocketException {
      return RiddhaHttpResponse(status: false, message: 'Socket Exception');
    } on TimeoutException {
      return RiddhaHttpResponse(status: false, message: 'Timeout Exception');
    } on ProcessException {
      return RiddhaHttpResponse(status: false, message: 'Process Exception');
    } catch (e) {
      return _errorResponse(e);
    }
  }

//Delete Method
  @override
  Future<RiddhaHttpResponse> delete(String url,
      {Map<String, String>? headers}) async {
    try {
      var response =
          await _client.delete(Uri.parse(url), headers: headers ?? _header);
      return _response(response);
    } on SocketException {
      return RiddhaHttpResponse(status: false, message: 'Socket Exception');
    } on TimeoutException {
      return RiddhaHttpResponse(status: false, message: 'Timeout Exception');
    } on ProcessException {
      return RiddhaHttpResponse(status: false, message: 'Process Exception');
    } catch (e) {
      return _errorResponse(e);
    }
  }
}

final _header = <String, String>{
  'Content-Type': 'application/json; charset=UTF-8',
  'Accept-Encoding': 'gzip',
};

RiddhaHttpResponse _response(http.Response response) {
  if (response.statusCode == HttpStatus.ok) {
    return RiddhaHttpResponse(
        status: true, message: 'Successfull', data: jsonDecode(response.body));
  } else {
    return RiddhaHttpResponse(
        status: false, message: response.statusCode.toString());
  }
}

RiddhaHttpResponse _errorResponse(Object e) {
  return RiddhaHttpResponse(status: false, message: e.toString());
}
