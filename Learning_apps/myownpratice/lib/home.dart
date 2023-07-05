import 'package:flutter/material.dart';
import 'package:myownpratice/ProfilePage.dart';
import 'package:myownpratice/home.dart';

class Home extends StatefulWidget {
  const Home(this.profile, {super.key});
  final void Function() profile;
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<String> list = ["Prince", "Piyush", "Meghna", "Pallvi Purohit", "Umang"];
  String selected = "Option A";
  String currentScreen = "Home";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("Made by Prince"),
            leading: InkWell(
              child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Prince.PNG")),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            actions: [
              PopupMenuButton(
                  // surfaceTintColor: Colors.black,
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  color: Colors.black,
                  position: PopupMenuPosition.under,
                  itemBuilder: (BuildContext context) => const [
                        PopupMenuItem(
                            child: Text(
                          "Item 1",
                          style: TextStyle(color: Colors.white),
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Item 2",
                          style: TextStyle(color: Colors.white),
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Item 3",
                          style: TextStyle(color: Colors.white),
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Item 4",
                          style: TextStyle(color: Colors.white),
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Item 5",
                          style: TextStyle(color: Colors.white),
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Item 6",
                          style: TextStyle(color: Colors.white),
                        )),
                      ])
            ],
          ),
          body: Center(
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 73, 7, 2),
                Colors.black,
                Color.fromARGB(255, 1, 40, 71)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                        dropdownColor: Colors.black,
                        value: selected,
                        items: const [
                          DropdownMenuItem(
                              value: "Option A",
                              child: Text(
                                "Button 1",
                                style: TextStyle(color: Colors.white),
                              )),
                          DropdownMenuItem(
                              value: "Option B",
                              child: Text(
                                "Button 2",
                                style: TextStyle(color: Colors.white),
                              )),
                          DropdownMenuItem(
                              value: "Option C",
                              child: Text(
                                "Button 3",
                                style: TextStyle(color: Colors.white),
                              )),
                          DropdownMenuItem(
                              value: "Option D",
                              child: Text(
                                "Button 4",
                                style: TextStyle(color: Colors.white),
                              )),
                          DropdownMenuItem(
                              value: "Option E",
                              child: Text(
                                "Button 5",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                        onChanged: (test) {
                          setState(() {
                            selected = test!;
                          });
                        })
                  ]),
            ),
          ),
        ));
  }
}
