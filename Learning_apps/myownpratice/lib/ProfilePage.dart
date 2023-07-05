import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myownpratice/ScreenManager.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  final Uri linkedin =
      Uri.parse("https://www.linkedin.com/in/piyush-thakur-5268a3226/");
  linkedinURL() async {
    if (await canLaunchUrl(linkedin)) {
      await launchUrl(linkedin);
    } else {
      throw "Could not launch the url";
    }
  }

  final Uri github = Uri.parse("https://github.com/Prince10z");
  githubURL() async {
    if (await canLaunchUrl(github)) {
      await launchUrl(github);
    } else {
      throw "Could not launch the url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                    // const SizedBox(
                    //   width: double.infinity,
                    // ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 30, spreadRadius: 30, color: Colors.grey),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    "assets/images/Prince.PNG",
                    // scale: Checkbox.width,
                  ),
                ),
                // const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/facebook.png"),
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/twitter.png"),
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        linkedinURL();
                      },
                      icon: Image.asset("assets/images/linked-in.png"),
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/gmail.png"),
                      // style: IconButton.styleFrom(shape: const CircleBorder()),
                      iconSize: 45,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Piyush Thakur",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                TextButton.icon(
                  onPressed: () {
                    githubURL();
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.black54),
                  icon: Image.asset("assets/images/github.png"),
                  label: const Text(
                    "Prince10z",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "Flutter based Mobile App developer",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey),
                  clipBehavior: Clip.hardEdge,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.help_outline, color: Colors.black),
                    label: const Text(
                      "Help",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size.fromHeight(400),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
