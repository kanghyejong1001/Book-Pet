
// final bookList = {
//   "list": [
//     {"image": "assets/images/img_blue.png", "name": "당신, 거기 있어줄래요?"},
//     {"image": "assets/images/img_mint.png", "name": "센 강의 이름 모를 여인"},
//     {"image": "assets/images/img_skyblue.png", "name": "안젤리크"},
//     {"image": "assets/images/img_white.png", "name": "크리스마스 인터네셔널"}
//   ]
// };
// import 'package:flutter/cupertino.dart';
import 'package:book_pet/bookInfo.dart';
import 'package:book_pet/bookMeetingInfo.dart';
import 'package:book_pet/menu.dart';
import 'package:flutter/material.dart';

class BookMeetingList extends StatefulWidget {
  const BookMeetingList({super.key});
  @override
  _BookMeetingListState createState() => _BookMeetingListState();
}

class _BookMeetingListState extends State<BookMeetingList> {

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
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(title: 'Menu')));
            }
        ),
      ),
      body: SingleChildScrollView(
          child: Column (
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton (
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BookMeetingInfo()));
                    print("pressed");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.deepPurple.shade100),
                  child: Row (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Image.network("http://image.yes24.com/goods/116208935/XL",
                        width: 120,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text (
                              "기욤 뮈소 신작이면 읽어야지\n",

                              style: TextStyle (
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),

                            Text (

                              " 책:   안젤리크",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "방장: 안상준",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "#액션",
                              style: TextStyle (
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "\n 기간: 12.14 ~ 01.19",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              '\n  1/10',
                              textAlign: TextAlign.right,
                              style: TextStyle (
                                color: Colors.black,
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
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const BookMeetingInfo()));
                    print("pressed");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.deepPurple.shade100),
                  child: Row (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Image.network("http://image.yes24.com/goods/116208935/XL",
                        width: 120,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text (
                              "기욤 뮈소 신작이면 읽어야지\n",

                              style: TextStyle (
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),

                            Text (
                              " 책:   안젤리크",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "방장: 안상준",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "#액션",
                              style: TextStyle (
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "\n 기간: 12.14 ~ 01.19",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              '\n  1/10',
                              textAlign: TextAlign.right,
                              style: TextStyle (
                                color: Colors.black,
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
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BookMeetingInfo()));
                    print("pressed");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.deepPurple.shade100),
                  child: Row (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Image.network("http://image.yes24.com/goods/116208935/XL",
                        width: 120,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text (
                              "기욤 뮈소 신작이면 읽어야지\n",

                              style: TextStyle (
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),

                            Text (

                              " 책:   안젤리크",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "방장: 안상준",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "#액션",
                              style: TextStyle (
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "\n 기간: 12.14 ~ 01.19",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              '\n  1/10',
                              textAlign: TextAlign.right,
                              style: TextStyle (
                                color: Colors.black,
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
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const BookMeetingInfo()));
                    print("pressed");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.deepPurple.shade100),
                  child: Row (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Image.network("http://image.yes24.com/goods/116208935/XL",
                        width: 120,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget> [
                            Text (
                              "기욤 뮈소 신작이면 읽어야지\n",

                              style: TextStyle (
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),

                            Text (

                              " 책:   안젤리크",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "방장: 안상준",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "#액션",
                              style: TextStyle (
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              "\n 기간: 12.14 ~ 01.19",
                              style: TextStyle (
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text (
                              '\n  1/10',
                              textAlign: TextAlign.right,
                              style: TextStyle (
                                color: Colors.black,
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

