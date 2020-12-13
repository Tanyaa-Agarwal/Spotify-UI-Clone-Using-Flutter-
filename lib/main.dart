import 'package:flutter/material.dart';
import 'package:spotify_ui/screens/welcome_page.dart';
import 'package:spotify_ui/screens/home_screen.dart';


void main() {
  runApp(Spotify());
}

class Spotify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff222326),
        accentColor: Color(0xff121212),
      ),
      home: HomeScreen(),
    );
  }
}
