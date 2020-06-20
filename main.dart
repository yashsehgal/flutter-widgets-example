// this is a basic example for a flutter app code
// to develop a basic material app using material.dart module

// importing the material design app module
import 'package:flutter/material.dart';

// every flutter app starts with a main function, which has a function statement
// having runApp() from material.dart module which will render the app class method
// to our app, using StatelessWidget properties.

void main() => runApp(MyApp());

// the MyApp class is that one main class which will handle our app methods and
// functions and other widgets to develop our flutter app.

// this class also extends the StatelessWidget class from material.dart module
class MyApp extends StatelessWidget {
  
  // log output function
  void displayLogOutput() {
    print("The button is clicked by the user,");
    print("this is an example of log output");
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Demo"),
        ),
        body: Column(
          children: [
            
            // text example
            Text("This is an example of a flutter widget text"),
            Text("Flutter is a widget and container based tool."),
            Text("This is a framework for Dart language."),
            
            // example of button - deactivated button - this button is non-clickable but
            // will not perform anything.
            RaisedButton(
              child: Text("Deactivated Button"),
              onPressed: null,
            ),
            
            // example of button - activated button - this button is clickable and its output
            // will be shown in the log/terminal.
            RaisedButton(
              child: Text("Activated Button with Log Output"),
              onPressed: displayLogOutput,
            ),
            
          ],
        ),
      ),
    );
  }
}
