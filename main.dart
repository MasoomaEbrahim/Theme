import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    
  //first time trying theme and it did work 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueAccent, // Set AppBar color
          titleTextStyle: const TextStyle(
            color: Colors.white, // Title text color
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.green, // Primary body text color
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: TextStyle(
            color: Colors.black, // Secondary body text style
            fontSize: 16,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons title'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Try the radio button',
            style: Theme.of(context).textTheme.bodyLarge, // Use bodyLarge from theme
          ),
          const SizedBox(height: 20), // Add some spacing
          Text(
            'This is another text style',
            style: Theme.of(context).textTheme.bodyMedium, // Use bodyMedium from theme
          ),
        ],
      ),
    );
  }
}