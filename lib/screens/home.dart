import 'package:firstapp/screens/homebody.dart';
import 'package:firstapp/screens/male_story_screen.dart';
import 'package:firstapp/screens/settings.dart';
import 'package:firstapp/screens/stories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String selectedGender;
  HomePage({required this.selectedGender});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    HomeBody(),
    StoriesPage(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Home'),
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        onTap: (int index) {
          setState((){
            selectedPage = index;
          }
          );
        },
      ),
    );
  }
}
