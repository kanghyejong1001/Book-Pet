import 'package:flutter/material.dart';

import 'bookInfo.dart';

class BookList extends StatefulWidget {
  const BookList({super.key});
  @override
  State<StatefulWidget> createState() => _BookListState();
}

class _BookListState extends State<BookList> {

  bool typing = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        // title: typing ? TextBox() : const Text(""),

        title: typing ? const TextBox() : const Text(""),

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
              Navigator.pushNamed(context, '/menu');
            }
        ),
      ),
     body: SingleChildScrollView(
         child: Column (
           children: <Widget> [
             Padding(
               padding: const EdgeInsets.all(12),
               child: ElevatedButton (
                 onPressed: () => Navigator.pushNamed(context, '/bookInfo'),
                 style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
                 child: Row (
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget> [
                     Image.network("https://contents.kyobobook.co.kr/pdt/9788984374546.jpg",
                       width: 150,
                       height: 220,
                       fit: BoxFit.fill,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(12),
                       child: Column (
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: const <Widget> [
                           Text (
                             "안젤리크\n",
                             style: TextStyle (
                               fontSize: 30,
                             ),
                           ),
                           Text (
                             "작가 : 기욤 뮈소",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "장르 : 액션",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "별점 : ★★★★☆",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             '\n  "젊다는 것 만큼 외로운 것도 없지."',
                             style: TextStyle (
                               fontSize: 13,
                             ),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(12),
               child: ElevatedButton (
                 onPressed: () {
                   print("pressed");
                 },
                 style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
                 child: Row (
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget> [
                     Image.network("http://image.yes24.com/goods/116208935/XL",
                       width: 150,
                       height: 220,
                       fit: BoxFit.fill,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(12),
                       child: Column (
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: const <Widget> [
                           Text (
                             "안젤리크\n",
                             style: TextStyle (
                               fontSize: 30,
                             ),
                           ),
                           Text (
                             "작가 : 기욤 뮈소",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "장르 : 액션",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "별점 : ★★★★☆",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             '\n  "젊다는 것 만큼 외로운 것도 없지."',
                             style: TextStyle (
                               fontSize: 13,
                             ),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(12),
               child: ElevatedButton (
                 onPressed: () {
                   print("pressed");
                 },
                 style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
                 child: Row (
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget> [
                     Image.network("http://image.yes24.com/goods/116208935/XL",
                       width: 150,
                       height: 220,
                       fit: BoxFit.fill,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(12),
                       child: Column (
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: const <Widget> [
                           Text (
                             "안젤리크\n",
                             style: TextStyle (
                               fontSize: 30,
                             ),
                           ),
                           Text (
                             "작가 : 기욤 뮈소",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "장르 : 액션",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "별점 : ★★★★☆",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             '\n  "젊다는 것 만큼 외로운 것도 없지."',
                             style: TextStyle (
                               fontSize: 13,
                             ),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(12),
               child: ElevatedButton (
                 onPressed: () {
                   print("pressed");
                 },
                 style: ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
                 child: Row (
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget> [
                     Image.network("http://image.yes24.com/goods/116208935/XL",
                       width: 150,
                       height: 220,
                       fit: BoxFit.fill,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(12),
                       child: Column (
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: const <Widget> [
                           Text (
                             "안젤리크\n",
                             style: TextStyle (
                               fontSize: 30,
                             ),
                           ),
                           Text (
                             "작가 : 기욤 뮈소",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "장르 : 액션",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             "별점 : ★★★★☆",
                             style: TextStyle (
                               fontSize: 20,
                             ),
                           ),
                           Text (
                             '\n  "젊다는 것 만큼 외로운 것도 없지."',
                             style: TextStyle (
                               fontSize: 13,
                             ),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ],
         )
     ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({super.key});

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

