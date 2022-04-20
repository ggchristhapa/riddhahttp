class RiddhaHttpResponse {
  RiddhaHttpResponse({
    required this.status,
    required this.message,
    this.data,
  });

  bool status;
  String message;
  dynamic data;
}
