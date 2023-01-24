import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const SulogoonApp());
}

class SulogoonApp extends StatelessWidget {
  const SulogoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
