import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book-Pet',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const Login(),

        '/': (BuildContext context) => const Home(title: 'Book-Pet Home Page'),
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    );
  }
}
