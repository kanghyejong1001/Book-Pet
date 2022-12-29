import 'package:book_pet/bookInfo.dart';

import 'package:book_pet/bookList.dart';
import 'package:book_pet/profilePage.dart';

import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'menu.dart';
import 'bookMeetingList.dart';
import 'menu.dart';
import 'bookList.dart';


class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book-Pet',
      initialRoute: '/menu',




      routes: {
        '/menu': (BuildContext context) => const Menu(title: 'Menu'),
        '/': (BuildContext context) => const Home(title: 'Book-Pet Home Page'),
        '/profile': (BuildContext context) => const ProfilePage(),
        '/menu/profile': (BuildContext context) => const ProfilePage(),

        // '/menu': (BuildContext context) => const Menu(title: 'Book-Pet menu'),

        '/bookMeetingList': (BuildContext context) => const BookMeetingList(),

      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    );
  }
}
