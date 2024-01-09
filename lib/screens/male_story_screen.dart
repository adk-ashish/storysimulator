import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaleStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
          child: Stack(
            children: [
              // Image for the college boy on the bus
              Image.asset(
                "assets/images/boy_on_bus.jpeg",
                width: width,
                height: height,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: width* 0.1,
                right: width* 0.1,
                bottom: height * 0.85,
                child: Text(
                  'A college boy is sitting on a bus...',
                  style: TextStyle(color: Colors.white,fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),

              Positioned(
                bottom: 0.1 * height,
                child: Container(
                  color: Colors.amber,
                  width: width,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle the option to ignore
                          // Navigate to the next story screen based on the choice
                        },
                        child: Text('Say Hi'),
                      ),
                       ElevatedButton(
                        onPressed: () {
                          // Handle the option to ignore
                          // Navigate to the next story screen based on the choice
                        },
                        child: Text('Ignore Her '),
                      ),
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      );
  }
}


