import 'package:flutter/material.dart';
import 'male_story_screen.dart';
import 'female_story_screen.dart';
class GenderSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gender Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Are you Male or Female?',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MaleStoryScreen()),
                );
                // Handle Male selection
                // Navigate to Male Story
              },
              child: Text('Male'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FemaleStoryScreen()),
                );
                // Handle Female selection
                // Navigate to Female Story
              },
              child: Text('Female'),
            ),
          ],
        ),
      ),
    );
  }
}
