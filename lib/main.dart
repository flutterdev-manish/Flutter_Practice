import 'package:flutter/material.dart';
import 'package:practice_flutter/screens/login_screen.dart';
import 'package:practice_flutter/themes/darkTheme.dart';
import 'package:practice_flutter/themes/lightTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      // useMaterial3: true,
      home: const LoginScreen(),
    );
  }
}
