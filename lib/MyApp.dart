import 'package:flutter/material.dart';
import 'package:flutter_exam/src/main/launcher_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello flutter",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LauncherPage(),
    );
  }
}