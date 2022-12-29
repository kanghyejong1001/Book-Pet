import 'package:flutter/material.dart';

class Book {
  final String image;
  final String name;
  final String tag;
  final String author;
  final String genre;
  final String star;
  final String aline;

  Book(this.image, this.name, this.tag, this.author, this.genre, this.star, this.aline);
}

var book = [];

class BookTitle extends StatelessWidget {
  const BookTitle(this._book);

  final Book _book;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Column (
    //     children: <Widget> [
    //       Row (
    //         children: [
    //           // Image(
    //           //   image: NetworkImage("http://image.yes24.com/goods/116208935/XL"),
    //           // ),
    //           Column (
    //             children: [
    //               Text(_book.name),
    //             ],
    //           )
    //         ],
    //       )
    //     ],
    //   )
    // );
    return ListTile (
      //visualDensity: VisualDensity(vertical: 4),
      leading: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 100,
          maxHeight: 800,
        ),
       child: Image.network(_book.image,fit: BoxFit.fill),
        // width: 100,
        // height: 300,
        // //
        //
      ),
      title: Text("\n"+_book.name),

      subtitle: Text("\n작가 : ${_book.author}\n장르 : ${_book.genre}\n별점 : ${_book.star}\n"),
      onTap: () {
        print("pressed");
      },
      // subtitle: Text("${_person.age}세"),
      // trailing: PersonHandIcon(_person.isLeftHand),
    );
  }
}

class BookList extends StatefulWidget {
  const BookList({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BookList> {

  bool typing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: typing ? TextBox() : const Text(""),
        actions: [
          IconButton (
            icon: Icon(typing ? Icons.close : Icons.search),
            color: Colors.black,
            onPressed: () {
              setState(() {
                typing = !typing;
              });
            },
          )
        ],
        leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
            }
        ),
      ),
      // body: ListView(
      //   padding: const EdgeInsets.all(8),
      //   children: <Widget> [
      //     BookTitle(Book("http://image.yes24.com/goods/116208935/XL","안젤리크","#사랑 #죽음","기욤 뮈소","액션","★★★★☆",'"젋다는 것 만큼 외로운 것도 없지')),
      //     BookTitle(Book("http://image.yes24.com/goods/116208935/XL","안젤리크","#사랑 #죽음","기욤 뮈소","액션","★★★★☆",'"젋다는 것 만큼 외로운 것도 없지')),
      //   ],
      // ),
      // body: Column (
      //   children: [
      //     Container (
      //       height: 100,
      //       child: ListView.builder,
      //     )
      //   ],
      // )
    );
  }
}

class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: TextField(
        decoration: const InputDecoration(
          //labelText: '아무거나 입력하세요',
            hintText: '검색하기',  //글자를 입력하면 사라진다.
            //icon: Icon(Icons.android),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(10)
        ),
        onSubmitted: (String value) async {
          print(value);
        },
      ),
    );
  }
}