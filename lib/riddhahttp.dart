import 'package:riddhahttp/response_model.dart';
import 'package:riddhahttp/riddhahttp_services.dart';

class RiddhaHttp {
  Future<RiddhaHttpResponse> get(url, {headers}) =>
      HttpServices().get(url, headers: headers);
  Future<RiddhaHttpResponse> post(url, json, {headers}) =>
      HttpServices().post(url, json, headers: headers);
  Future<RiddhaHttpResponse> put(url, json, {headers}) =>
      HttpServices().put(url, json, headers: headers);
  Future<RiddhaHttpResponse> delete(url, {headers}) =>
      HttpServices().delete(url, headers: headers);
}
