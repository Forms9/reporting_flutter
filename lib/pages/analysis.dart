import 'package:flutter/material.dart';

// import '../responsive_layout.dart';

class Analysis extends StatelessWidget {
  const Analysis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const ResponsiveLayout(
      //   mobileBody: MobileAnalysis(),
      //   tabletBody: TabletAnalysis(),
      //   desktopBody: DesktopAnalysis(),
      // ),
    );
  }
}
