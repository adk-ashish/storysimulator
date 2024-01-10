import 'package:flutter/material.dart';

import 'male_story_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '1. Story This is story about blalallalalallalal',
            style: TextStyle(fontSize: 24,),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle replay button tap
                },
                child: Text('Replay'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MaleStoryScreen())
                  );
                  // Handle resume button tap
                },
                child: Text('Resume'),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
