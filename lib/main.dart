import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        textTheme: GoogleFonts.latoTextTheme(Typography.blackHelsinki).copyWith(
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          titleMedium: GoogleFonts.oswald(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          titleSmall: GoogleFonts.oswald(
            color: Colors.black38,
            fontSize: 16,
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width * 10.0, 57.0),
            ),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
