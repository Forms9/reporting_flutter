import 'package:flutter/material.dart';

class Analysis extends StatelessWidget {
  const Analysis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Analysis',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.cyan[900],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.white, // Set text color to white
                  ),
                  decoration: InputDecoration(
                    hintText: 'Analysis',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ), // Set hint text color to white
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ), // Set border color to white
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ), // Set focused border color to white
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    print('Search!');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Color.fromARGB(255, 12, 4, 15)),
                      Text('Search', style: TextStyle(fontSize: 18.0)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.cyan[900],
      ),
    );
  }
}

void main() {
  runApp(Analysis());
}
