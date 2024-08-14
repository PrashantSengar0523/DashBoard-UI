import 'package:flutter/material.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text(width.toString()),
      ),
    );
  }
}
