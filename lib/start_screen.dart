import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, //brings the image to centre
        //we are adding column and iit takes children here becasue we want to add mmultiple widgets vertically on the screen which are image a text and a button
        children: [
              Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(179, 255, 255, 255),//this made white transparetn image instead of using opaque can use this for performance
              //color: Colors.red, overlaying the current widget imagae colour
            ),
          
          // Opacity( //this is performance intensive so we will use another way 
          //   opacity:0.5, //setting transparency  to the widget which has the image
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80), //exactly takes just enough space
          const Text(
            'Learn Flutter in the fun way',
            style: TextStyle(
                color: Color.fromARGB(255, 204, 233, 158), fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon( //adding button . the .icon here is a constructor of default class icon 
            onPressed: () {}, //adding click to button with empty function
            style: OutlinedButton.styleFrom( //making button text white
              foregroundColor: Colors.white
            ),
            icon: const Icon(Icons.arrow_right_alt), //showing the small arrow towards the right in the start quiz button 
            label: const Text('start quiz'), //button text what to show
          ),
        ],
      ),
    );
  }
}
