import 'package:flutter/material.dart';
import 'widgets/pannel_1.dart';
import 'widgets/pannel_2.dart';
import 'widgets/pannel_3.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First section
            Pannel1(),

            // Second section
            Pannel2(),

            // Third section
            Pannel3(),
          ],
        ),
      ),
    );
  }
}
