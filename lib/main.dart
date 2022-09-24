import 'package:flutter/material.dart';
import 'package:untitled1/core/services/service_locator.dart';
import 'package:untitled1/core/test.dart';
import 'package:untitled1/core/utils/app_string.dart';


void main()async {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      theme: ThemeData.dark().copyWith(
        backgroundColor: Colors.grey.shade900
      ),
      home: const Testing(),
    );
  }
}


