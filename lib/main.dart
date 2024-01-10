import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookly_app/core/utlis/constance.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(
    const BooklyApp(),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}
