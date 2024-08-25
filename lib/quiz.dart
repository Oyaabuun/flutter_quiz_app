//import 'package:flutter/widgets.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {//this creates an instance of the _QuizState class

  return _QuizState();
} 
}
class _QuizState extends State<Quiz>{
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ Color.fromARGB(255, 3, 97, 6),
                Color.fromARGB(255, 129, 187, 63)
              ],
              begin:Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}