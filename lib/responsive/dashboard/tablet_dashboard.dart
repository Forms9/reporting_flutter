import 'package:flutter/material.dart';

import '../../util/drawer.dart';

class TabletDashboard extends StatelessWidget {
  const TabletDashboard({super.key});

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
