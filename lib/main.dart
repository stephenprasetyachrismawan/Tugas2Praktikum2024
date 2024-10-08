import 'package:flutter/material.dart';
import '/ui/form_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Input',
      theme: ThemeData(
        // Define pink pastel
        primaryColor: const Color(0xFFF8BBD0),
        scaffoldBackgroundColor: const Color(0xFFFFF1F3),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 215, 80, 125),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF48FB1), // Button
            foregroundColor: Colors.white, // Text
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 215, 80, 125),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF8BBD0)), // Border
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 215, 80, 125)),
          ),
        ),
      ),
      home: const FormData(),
    );
  }
}
