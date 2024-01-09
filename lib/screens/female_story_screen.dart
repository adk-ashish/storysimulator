import 'package:flutter/material.dart';
class FemaleStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image for the college boy on the bus
              Image.asset(
                'assets/images/boy_on_bus.jpeg',
                width: 500,
                height: 500,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'A college girl is sitting on a bus...',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle the option to say hi
                  // Navigate to the next story screen based on the choice
                },
                child: Text('Say Hi'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle the option to ignore
                  // Navigate to the next story screen based on the choice
                },
                child: Text('Ignore'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
