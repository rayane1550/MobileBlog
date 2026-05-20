import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const FlutterBlogApp());
}

class FlutterBlogApp extends StatelessWidget {
  const FlutterBlogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Blog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF1F1229),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B5CF6),
          brightness: Brightness.dark,
        ),
      ),
      home: const LoginPage(),
    );
  }
}