import 'package:flutter/material.dart';
import 'package:local_shop/screens/home_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.grey[200],
        ),
        textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
            titleSmall: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            )),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width * 10.0, 55.0),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
