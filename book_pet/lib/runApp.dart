import 'package:flutter/material.dart';

import 'menu.dart';

import 'home.dart';
import 'login.dart';
import 'profilePage.dart';
import 'myLibrary.dart';

import 'bookList.dart';
import 'bookInfo.dart';

import 'bookMeetingList.dart';
import 'bookMeetingInfo.dart';


class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book-Pet',

      initialRoute: '/',

      routes: {
        '/menu': (BuildContext context) => const Menu(title: 'Menu'),
        '/': (BuildContext context) => const Home(title: 'Book-Pet Home Page'),
        '/login': (BuildContext context) => const Login(),

        '/profile': (BuildContext context) => const ProfilePage(),
        '/myLibrary': (BuildContext context) => const MyLibrary(),

        '/bookList': (BuildContext context) => const BookList(),
        '/bookInfo': (BuildContext context) => const BookInfo(),

        '/bookMeetingList': (BuildContext context) => const BookMeetingList(),

        '/bookList': (BuildContext context) => const BookList(),

        '/bookMeetingInfo': (BuildContext context) => const BookMeetingInfo(),


      },
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
    );
  }
}
