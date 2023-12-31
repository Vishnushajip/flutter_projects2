import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Fonts Example',
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Fonts Example'),
      ),
      body: Center(
        child: Text(
          'Hello, Google Fonts!',
          style: GoogleFonts.getFont('Lato', fontSize: 24), // Use Lato font
        ),
      ),
    );
  }
}
