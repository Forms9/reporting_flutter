import 'package:flutter/material.dart';
import 'package:forms9_pos_auth/pages/dashboard.dart';

class SearchSupplier extends StatelessWidget {
  const SearchSupplier({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Go back!!'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Navigate to the search screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20, right: 700, left: 700),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter supplier name...',
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add your button press logic here
                },
                child: Text('Press me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(SearchSupplier());
}
