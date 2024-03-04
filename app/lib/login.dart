import 'package:app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:app/components/my_test.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(Icons.message, size: 70, color: Colors.black),

                //Text
                Text(
                  "Hello Welcome Back",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                //text field
                MyText(
                    controller: emailController,
                    hintText: 'Enter thr email',
                    obscureText: false),
                const SizedBox(
                  height: 20,
                ),
                //text field
                MyText(
                    controller: passwordController,
                    hintText: 'password',
                    obscureText: true),
                const SizedBox(
                  height: 20,
                ),

                MyButton(onTap: signIn, text: "Sign in"),
                const SizedBox(
                  height: 20,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "register now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
