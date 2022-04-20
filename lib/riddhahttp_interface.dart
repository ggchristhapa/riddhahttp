import 'package:riddhahttp/response_model.dart';

abstract class RiddhaHttpInterface {
  Future<RiddhaHttpResponse> get(String url, {Map<String, String>? headers});
  Future<RiddhaHttpResponse> post(String url, Map<String, dynamic> json,
      {Map<String, String>? headers});
  Future<RiddhaHttpResponse> put(String url, Map<String, dynamic> json,
      {Map<String, String>? headers});
  Future<RiddhaHttpResponse> delete(String url, {Map<String, String>? headers});
}
