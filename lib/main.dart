import 'package:app_1/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'productPreview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/productPreview': (context) => const ProductPreviewScreen(),
      },
    );
  }
}
