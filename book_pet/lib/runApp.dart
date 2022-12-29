import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'menu.dart';
import 'bookMeetingList.dart';


class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book-Pet',

      initialRoute: '/',

      routes: {
        '/login': (BuildContext context) => const Login(),

        '/': (BuildContext context) => const Home(title: 'Book-Pet Home Page'),

        // '/menu': (BuildContext context) => const Menu(title: 'Book-Pet menu'),

        '/bookMeetingList': (BuildContext context) => const BookMeetingList(),
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    );
  }
}
