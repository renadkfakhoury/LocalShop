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
        textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(),
            titleSmall: TextStyle(
              fontSize: 16,
            )),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle()),
      ),
      home: const HomePage(),
    );
  }
}
