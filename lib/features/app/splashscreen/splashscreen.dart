import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../user_auth/presentation/pages/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState(); // Call super.initState() first
    Future.delayed(Duration(seconds: 3), () {
     Navigator.pushNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "VERVEWISE",
          style: TextStyle(
              color: Colors.purple, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
