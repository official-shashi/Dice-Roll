import 'package:flutter/material.dart';

import 'gradientContainer.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 68, 16, 209),
          Color.fromARGB(255, 78, 31, 158),
        ),
      ),
    );
  }
}