import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 131, 50),
          leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(color: Colors.white)),

            // child: CircleAvatar(
            //     // radius: 100,
            //     child: Image.asset("assets/Images/prince_thakur.png")),

            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "assets/Images/Prince.PNG",
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/logo/cart-24.png"),
            )
          ],
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // transform: Gr,
              colors: [Color.fromARGB(255, 223, 131, 50), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  children: [
                    Text(
                      " Hello, Chromicle",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      " Hunting for delicious food?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      TextFormField(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
