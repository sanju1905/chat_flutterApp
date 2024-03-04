import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyText(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      //
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.purple),
      ),
    );
  }
}
