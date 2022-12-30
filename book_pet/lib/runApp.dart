import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:book_pet/utils/user_preferences.dart';
import 'menu.dart';
import 'themes.dart';
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
    final user = UserPreferences.myUser;
    
    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Book-pet',
          initialRoute: './',
          debugShowCheckedModeBanner: false,
          routes: {
            '/menu': (BuildContext context) => const Menu(title: 'Menu'),
            '/': (BuildContext context) => const Home(title: 'Book-Pet Home Page'),
            '/login': (BuildContext context) => const Login(),

            '/profile': (BuildContext context) => const ProfilePage(),
            '/myLibrary': (BuildContext context) => const MyLibrary(),

            '/bookList': (BuildContext context) => const BookList(),
            '/bookInfo': (BuildContext context) => const BookInfo(),

            '/bookMeetingList': (BuildContext context) => const BookMeetingList(),
            '/bookMeetingInfo': (BuildContext context) => const BookMeetingInfo(),
          },
          theme: ThemeData(
            primarySwatch: Colors.lightGreen,
          ),
        ),
      ),
    );
  }
}
