<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
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
