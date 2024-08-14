import 'package:flutter/material.dart';
import 'package:my_app/desktop_dasboard.dart';
import 'package:my_app/mobile_dashboard.dart';
import 'package:my_app/resposive.dart';
import 'package:my_app/tablet_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        desktop: DesktopDashboard(),
        tablet: TabletDashboard(),
        mobile: MobileDashboard(),
      ),
    );
  }
}
