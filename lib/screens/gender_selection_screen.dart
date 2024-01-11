import 'package:firstapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'male_story_screen.dart';
import 'female_story_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class GenderSelectionScreen extends StatefulWidget {
  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  @override
  void initState() {
    super.initState();
    _loadGender();
  }
  _loadGender() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? gender = prefs.getString('gender');
    if (gender != null) {
      _navigateToHomePage(gender); //push gender
    }
  }
  _saveGender(String gender) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('gender', gender);
  }
  _navigateToHomePage(String gender) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(selectedGender: gender),
      )
    );
  }
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
                String selectedGender = 'male';
                _saveGender(selectedGender);
                _navigateToHomePage(selectedGender);
                // Handle Male selection
                // Navigate to Male Story
              },
              child: Text('Male'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String selectedGender = 'female';
                _saveGender(selectedGender);
                _navigateToHomePage(selectedGender);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => FemaleStoryScreen()),
                // );
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
