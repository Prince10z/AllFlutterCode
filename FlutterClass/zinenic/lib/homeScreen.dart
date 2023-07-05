import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  void message(String t) {
    Fluttertoast.showToast(
        msg: t,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 2,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.black,
        fontSize: 15,
        backgroundColor: const Color.fromARGB(255, 72, 68, 68));
  }

  @override
  Widget build(context) {
    final List<String> args =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // message("Back Button");
            message(args[0]);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "GEEKSFORGEEKS",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              // mouseCursor: MaterialStateMouseCursor.clickable,
              onPressed: () {
                message("Logout");
                Navigator.pop(context);
              },
              icon: const Icon(Icons.power_settings_new))
        ],
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Images/home.jpg"),
                  fit: BoxFit.cover)),
          // margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Card(
                margin: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "FIRSTNAME LASTNAME",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "College Name",
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              onPressed: () {
                                message("TODO LIST");
                              },
                              child: const Text("TODO LIST"),
                            ),
                            const SizedBox(
                              width: 9,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                // message("Editing Profile");
                                message(args[1]);
                              },
                              child: const Text(
                                "EDIT PROFILE",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
              /////////////////////////////////////////////////////////////////
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140,
                    width: 130,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: OutlinedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/pencil.png",
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "CONTRIBUTE",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onPressed: () {
                          message("Contribute Articles");
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 140,
                    width: 130,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: OutlinedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/code.png",
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "PRACTICE",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onPressed: () {
                          message("Practice");
                        },
                      ),
                    ),
                  ),
                ],
              ),
              /////////////////////////////////////////////////////////////////
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140,
                    width: 130,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: OutlinedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/learn.png",
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "LEARN",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onPressed: () {
                          message("Learn Programming");
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 140,
                    width: 130,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: OutlinedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/interests.png",
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "INTERESTS",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onPressed: () {
                          message("Filter your Interests");
                        },
                      ),
                    ),
                  ),
                ],
              ),
              /////////////////////////////////////////////////////////////////
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140,
                    width: 130,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: OutlinedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/help.png",
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "HELP",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onPressed: () {
                          message("Help?");
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 140,
                    width: 130,
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: OutlinedButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo/settings.png",
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              "SETTINGS",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        onPressed: () {
                          message("settings");
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
