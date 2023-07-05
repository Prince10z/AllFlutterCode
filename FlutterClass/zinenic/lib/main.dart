import 'package:flutter/material.dart';
import 'package:zinenic/homeScreen.dart';
// import 'package:zinenic/homeScreen.dart';
import 'package:zinenic/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "Login": (context) => const LoginScreen(),
        "home": (context) => const HomeScreen(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == "home") {
      //     final args = ModalRoute.of(context)!.settings.arguments
      //         as Map<String, dynamic>;
      //     final email = args['email'] as String;
      //     final password = args['password'] as String;
      //     return MaterialPageRoute(
      //       builder: (context) => HomeScreen(
      //         email: email, password: password,
      //         // email: settings.arguments as String,
      //         // password: settings.arguments as String,
      //       ),
      //     );
      //   }
      // },
      home: const LoginScreen(),
    );
  }
}
