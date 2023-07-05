import 'package:flutter/material.dart';
import 'package:myownpratice/ProfilePage.dart';
import 'package:myownpratice/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
