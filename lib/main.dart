import 'package:flutter/material.dart';
import 'package:chefio/page/GetStarted.dart';
import 'package:chefio/page/Homepage.dart';
import 'package:chefio/page/ProfilePage.dart';
import 'package:chefio/page/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chefio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      // Tentukan screen awal
      initialRoute: '/getstarted',
      // Daftar semua route
      routes: {
        '/getstarted': (context) => const GetStarted(),
        '/signin': (context) => const SignIn(),
        '/homepage': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
