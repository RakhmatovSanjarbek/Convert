import 'package:flutter/material.dart';
import 'package:sanoq_sestemalari/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      showSemanticsDebugger: false,
    );
  }
}
