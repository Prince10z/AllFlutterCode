import 'package:flutter/material.dart';
import 'package:practice/third.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Color.fromARGB(255, 47, 2, 2)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, "third");
                  // Navigator.pushAndRemoveUntil(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Third()),
                  //   ModalRoute.withName("first"),
                  // );
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Third()),
                    ModalRoute.withName("first"),
                  );
                },
                child: const Text("SecondButton"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
