import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Color(0xFFFEFEFE),
          primaryColor: Color(0xFFf36f7c),
          accentColor: Color(0xFFfff2f3)),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
