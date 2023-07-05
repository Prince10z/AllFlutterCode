import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zinenic/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailText = TextEditingController();
  final TextEditingController _passwordText = TextEditingController();

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 98, 230, 102),
                Color.fromARGB(255, 11, 46, 14)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "ZINENIC",
                  style: TextStyle(fontSize: 54, fontFamily: 'NeonVibes'),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _emailText,
                    cursorColor: Colors.white,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Email Address",
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 18)),
                    autocorrect: false,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                ///////////////////////////////////////
                // const SizedBox(height: 12),
                ///////////////////////////////////////
                SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: _passwordText,
                      cursorColor: Colors.white,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "******",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      autocorrect: false,
                    )),
                // const SizedBox(
                //   height: 30,
                // ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(45))),
                      clipBehavior: Clip.hardEdge,
                      child: ElevatedButton(
                        onPressed: () {
                          var _email = _emailText.text;
                          var _password = _passwordText.text;
                          if (_email == null ||
                              _email.trim().isEmpty ||
                              !_email.contains("@")) {
                            Fluttertoast.showToast(
                                msg: "Enter the valid Email",
                                toastLength: Toast.LENGTH_SHORT);
                          } else if (_password == null ||
                              _password.length < 8) {
                            Fluttertoast.showToast(
                                msg:
                                    "Minimum length of the password should be 8 digits");
                          } else {
                            Navigator.pushNamed(context, "home",
                                arguments: [_email, _password]);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "FACEBOOK",
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Image.asset("assets/logo/twitter.png"),
                        label: const Text(
                          "TWITTER",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
