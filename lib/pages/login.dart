import 'package:flutter/material.dart';

// import '../login/desktop_login.dart';
// import '../responsive_layout.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const ResponsiveLayout(
      //   // mobileBody: MobileLogin(),
      //   // tabletBody: TabletLogin(),
      //   desktopBody: DesktopLoginPage(),
      // ),
    );
  }
}
