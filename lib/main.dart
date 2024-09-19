import 'package:flutter/material.dart';
import '/ui/form_data.dart'; // Make sure to replace with the correct path to your FormData widget.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Input',
      theme: ThemeData(
        // Define the pastel pink color palette
        primaryColor: const Color(0xFFF8BBD0), // Pastel pink for the app
        scaffoldBackgroundColor:
            const Color(0xFFFFF1F3), // Lighter pink for background
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(
              255, 215, 80, 125), // Different shade of pink for the AppBar
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF48FB1), // Button color
            foregroundColor: Colors.white, // Text color
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 215, 80, 125), // Text color for labels
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFF8BBD0)), // Border color
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:
                    Color.fromARGB(255, 215, 80, 125)), // Focused border color
          ),
        ),
      ),
      home: const FormData(),
    );
  }
}
