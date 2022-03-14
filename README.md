RiddhaHttp is a http service over http package.

## Features

Easy http methods as services.

## Getting started

Future-based http service library for making HTTP requests.

Simple to consume HTTP resources. It's multi-platform, and supports mobile, desktop,
and the browser.

## Using

The easiest way to use this library is via the top-level functions. They allow
you to make individual HTTP requests with minimal hassle:

```dart
import 'package:riddhahttp/riddhahttp.dart';

//Post Method
String url = '';
var result = await  RiddhaHttpService().get(url);
print('Result: ${result}');


//Post Method
String url = '';
var result = await  RiddhaHttpService().post(url,{});
print('Result: ${result}');
