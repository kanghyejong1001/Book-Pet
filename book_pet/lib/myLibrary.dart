import 'package:book_pet/bookInfo.dart';
import 'package:flutter/material.dart';

class MyLibrary extends StatelessWidget {
  const MyLibrary({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('My Book List'),
            leading: IconButton(
      icon: const Icon(
        Icons.menu,
        semanticLabel: 'menu',
      ),
      onPressed: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(title: 'Menu')));
      },
        ),

      ),
        body: const Book(),
      ),
    );
  }

}
class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {

    final List<BookData> books = [
      BookData(Image.asset("assets/images/christmas.png")),
    ];
    return Container(
        child: Scrollbar(
          thickness: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: books.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1,
                        crossAxisCount: 3,
                        crossAxisSpacing: 2.0,
                        mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return IconButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BookInfo()));
                        },
                        splashRadius: 100,
                          iconSize: 200,
                        icon:
                        Image.asset("assets/images/angelique.png"),

/**/
                        );

                    },
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}

class BookData {

  final Image cover;
  BookData(this.cover);


static final String title = 'User Profile';

// @override
// Widget build(BuildContext context) {
//   final user = UserPreferences.myUser;
//
//   return ThemeProvider(
//     initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
//     child: Builder(
//       builder: (context) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: title,
//         home: ProfilePage(),
//       ),
//     ),
//   );
// }
}