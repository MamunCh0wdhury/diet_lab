import 'package:flutter/material.dart';
class MySignup extends StatelessWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Signup', style: TextStyle(color: Colors.grey.shade500),),
          Text('Forget Password?',style: TextStyle(color: Colors.grey.shade500),)
        ],
      ),
    );
  }
}
