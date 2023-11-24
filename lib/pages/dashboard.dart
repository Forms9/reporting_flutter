import 'package:flutter/material.dart';
import '../responsive/dashboard/desktop_dashboard.dart';
import '../responsive/dashboard/mobile_dashboard.dart';
import '../responsive/dashboard/tablet_dashboard.dart';
import '../responsive_layout.dart';
// import 'package:reporting_app/responsive_layout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileBody: MobileDashboard(),
        tabletBody: TabletDashboard(),
        desktopBody: DesktopDashboard(),
      ),
    );
  }
}
