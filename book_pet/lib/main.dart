import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

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
        body: bookList(),
      ),
    );
  }

}
class bookList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<BookData> books = [
      BookData(Image.asset("assets/images/you.png")),
      BookData(Image.asset("assets/images/christmas.png")),
      BookData(Image.asset("assets/images/seine.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/you.png")),
      BookData(Image.asset("assets/images/christmas.png")),
      BookData(Image.asset("assets/images/seine.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/you.png")),
      BookData(Image.asset("assets/images/christmas.png")),
      BookData(Image.asset("assets/images/seine.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),
      BookData(Image.asset("assets/images/angelique.png")),


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
                        onPressed: () {},
                        splashRadius: 100,
                          iconSize: 200,
                        icon:
                        Image.asset("assets/images/angelique.png"),


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

}