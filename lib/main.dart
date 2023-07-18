import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nomesapp/src/app_widget.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(const AppWidget());
}
