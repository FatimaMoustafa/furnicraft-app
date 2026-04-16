import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black12,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Furnicraft", style: TextStyle(color: Colors.blueAccent, fontSize: 32, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
