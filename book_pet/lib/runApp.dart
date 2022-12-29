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
      initialRoute: '/bookMeetingList',

      routes: {
        '/login': (BuildContext context) => const Login(),

        '/': (BuildContext context) => const Home(title: 'Book-Pet Home Page'),

        '/menu':(BuildContext context) => const Menu(title: 'Book-Pet menu') ,
        
        '/bookMeetingList':(BuildContext context) => const BookMeetingList(),

      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const Home(title: 'Book-Pet Home Page'),
    );
  }
}
