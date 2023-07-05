import 'package:flutter/material.dart';
import 'package:practice/first.dart';
import 'package:practice/second.dart';
import 'package:practice/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "first": (context) => const First(),
        "second": (context) => const Second(),
        "third": (context) => const Third()
      },
      home: const First(),
    );
  }
}
