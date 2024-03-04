import 'package:flutter/material.dart';
import 'package:app/components/my_button.dart';
import 'package:app/components/my_test.dart';

class Rehister extends StatefulWidget {
  const Rehister({super.key});

  @override
  State<Rehister> createState() => _RehisterState();
}

class _RehisterState extends State<Rehister> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  void signUp() {}
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
                  "Let's create an account for you",
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

                //text field
                MyText(
                    controller: confirmController,
                    hintText: 'Confirm password',
                    obscureText: true),
                const SizedBox(
                  height: 20,
                ),

                MyButton(onTap: signUp, text: "Sign in"),
                const SizedBox(
                  height: 20,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Login",
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
