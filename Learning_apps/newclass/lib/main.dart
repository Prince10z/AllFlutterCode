import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 90, 0, 0),
          leading: const Icon(Icons.person),
          title: const Center(child: Text("Let us check how it works")),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 70, 5, 0),
                Color.fromARGB(255, 0, 0, 0)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text(
                  //   "These are the type of images in Flutter:",
                  //   style: TextStyle(color: Colors.white, fontSize: 23),
                  // ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  // Text(
                  //   "Network Image",
                  //   style: TextStyle(color: Colors.white, fontSize: 13),
                  // ),
                  // Image(
                  //   image: NetworkImage(
                  //       "https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,q_60,w_965/zqcvkqx6e82ytrwu8les.jpg"),
                  // ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  // Text(
                  //   "Assets Image",
                  //   style: TextStyle(color: Colors.white, fontSize: 13),
                  // ),
                  // Image(
                  //   image: AssetImage("assets/images/car.jpg"),
                  // ),
                  OutlinedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 70, 5, 0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Outlined Button",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 70, 5, 0),
            child: const Icon(Icons.add)),
      ),
    );
  }
}
