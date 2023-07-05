import 'package:flutter/material.dart';
import 'package:pratice/Profile.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Image.asset("assets/images/Prince.PNG"),
          ),
          title: const Text(
            "Here is the final trail",
          )),
    );
  }
}
