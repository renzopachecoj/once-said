import 'package:flutter/material.dart';
import 'package:once_said/screens/constants.dart';
import 'package:once_said/screens/home_screen.dart';

void main() {
  runApp(OnceSaidApp());
}

class OnceSaidApp extends StatelessWidget {
  static const String _title = "Once Said...";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: ACCENT_COLOR, fontFamily: 'RobotoMono'),
      home: HomeScreen(),
    );
  }
}
