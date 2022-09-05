import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rocket App Clone',
      theme: ThemeData(backgroundColor: const Color(0xFF8c3494),
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName : (_) => const LoginPage(),
        HomePage.routeName : (_) => const HomePage(),
      },
    );
  }
}


