import 'package:flutter/material.dart';
import 'package:reporting_app/pages/analysis.dart';
import 'package:reporting_app/pages/dashboard.dart';
import 'package:reporting_app/pages/search_barcode.dart';
import 'package:reporting_app/pages/search_supplier.dart';
import 'package:reporting_app/pages/takepic.dart';
import 'package:reporting_app/pages/update_price.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 35, 148, 240),
            ),
            child: Text(
              'View',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('DASHBOARD'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          ListTile(
            title: Text('SEARCH BARCODE'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SearchBarcodePage()));
            },
          ),
          ListTile(
            title: Text('SEARCH SUPPLIER'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SearchSupplier()));
            },
          ),
          ListTile(
            title: Text('PRICE UPDATE'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => UpdatePrice()));
            },
          ),
          ListTile(
            title: Text('ANALYSIS'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Analysis()));
            },
          ),
          ListTile(
            title: Text('TAKE PIC'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TakePicPage()));
            },
          ),
        ],
      ),
    );
  }
}
