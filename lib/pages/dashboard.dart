import 'package:flutter/material.dart';
import '../responsive/dashboard/desktop_dashboard.dart';
// import 'package:reporting_app/responsive_layout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DesktopDashboard(),
    );
  }
}
