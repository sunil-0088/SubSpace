import 'package:flutter/material.dart';
import 'package:sub_space/pages/home/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SubSpace",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          // scaffoldBackgroundColor: const Color.fromARGB(225, 33, 33, 33),
          
          colorScheme:const  ColorScheme.dark(),
          ),
      home: HomePage(),
    );
  }
}
