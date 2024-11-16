import 'package:flutter/material.dart';
import 'package:prj_candi_si51/data/candi_data.dart';
import 'package:prj_candi_si51/screens/detail_screen.dart';
import 'package:prj_candi_si51/screens/home_screen.dart';
import 'package:prj_candi_si51/screens/profile_screen.dart';
import 'package:prj_candi_si51/screens/search_screen.dart';
import 'package:prj_candi_si51/screens/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.deepPurple),
            titleTextStyle: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(
                primary: Colors.deepPurple, surface: Colors.deepPurple[50]),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      // home: DetailScreen(candi: candiList[0]),
    );
  }
}
