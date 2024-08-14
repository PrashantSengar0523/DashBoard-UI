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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First section
            Pannel_1(),

            // Second section
            Pannel_2(),

            // Third section
            Pannel_3(),
          ],
        ),
      ),
    );
  }
}
