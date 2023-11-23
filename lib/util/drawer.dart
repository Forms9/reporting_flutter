import 'package:flutter/material.dart';
import 'package:forms9_pos_auth/pages/dashboard.dart';
import 'package:forms9_pos_auth/pages/search_supplier.dart';

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
            title: Text('SEARCH SUPPLIER'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SearchSupplier()));
            },
          ),
          ListTile(
            title: Text('PRICE UPDATE'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          ListTile(
            title: Text('TOTAL-INWARD'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
          ListTile(
            title: Text('TAKE PIC'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
            },
          ),
        ],
      ),
    );
  }
}
