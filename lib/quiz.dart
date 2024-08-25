//import 'package:flutter/widgets.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_screen.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {//this creates an instance of the _QuizState class

  return _QuizState();
} 
}
class _QuizState extends State<Quiz>{
  Widget? activeScreen; //this means that active screen can also be null 
  
   
 // Widget activeScreen =  StartScreen(switchScreen);//switchScreen here is a pointer,if we pass the switchScreen() function itself then it would change the screen immediately 
   //we are storing a widget in a avariable caz in dart widgets are objects and objects can be stored 
//we have to connect the switchsScreen to StartScreen so that when button is pressed on StartScreen it actually works)
//so we are adding a pointer of switchScreen fucntion to StartScreen 
@override
  void initState() { //this will execute before the build methods runs, so no need to write the setstate fucntion here becasue anyway it will run later.
    
    activeScreen=StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen(){ //remeber the empty() paraenthesis function its for switch
    setState((){  //empty paraenthesis is called anonymous fucntion
      activeScreen = const QuestionsScreen();
    });  //fucntion provided by flutter that is present inside all classes that extends state
  }
/*When you call set state in a state class,

so a class connected to a stateful widget,

Flutter will re-execute the build method and therefore

run all this code here again.

And then it will compare the result of executing that code,

to the result it got the last time it executed

the build method.

And if there are any differences,

it goes ahead and updates the rendered UI accordingly.

And indeed here for this widget,

for the quiz widget when the build method is executed

for the first time,

active screen will be set to start screen

and that will therefore be used

as a value down there,

and hence the start screen would be displayed.

But if then for whatever reason switch screen executed

and active screen would be set to question screen

with help of set state,

the build method would run again.

But now active screen is equal to questions screen

and therefore down here questions screen would be output.

And Dart would detect that there are differences

between these two widget trees,

the old one and the new one,

and it would update the UI accordingly.
  */
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
          child: activeScreen, //in 1st execution startScrenn() will be output but when setstate is called it will change the activescreen to questionscreen
        ),
      ),
    );
  }
}