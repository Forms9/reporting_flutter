import 'package:flutter/material.dart';
import 'package:forms9_pos_auth/util/drawer.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: const Text('Dashboard page'),
      ),
      body: Container(
        width: 200,
        height: 150,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Search Barcode',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
