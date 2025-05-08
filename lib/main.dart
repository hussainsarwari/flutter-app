import 'package:flutter/material.dart';
import 'pages/prifile.dart';
import 'pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'learn flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 28, 45),
      ),
      home: const Profile(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/profile': (context) => const Profile(),
        '/Nextpage': (context) => const Nextpage(),
      },
      
    );
    
  }
}
