// ignore_for_file: file_names, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  MyTextfield({super.key, required this.hintText, required this.obsureText,required this.prefixIcon,required this.suffixIcon});

  final String hintText;
  final bool obsureText;
  final prefixIcon;
  final suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Color(0xFFffffff),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey.shade400)
        ),
      ),
    );
  }
}
