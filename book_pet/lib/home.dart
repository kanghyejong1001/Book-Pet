import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'menu.dart';

import 'login.dart';


FirebaseFirestore firestore = FirebaseFirestore.instance;

class Book{
  Object? name;

  Book(this.name);
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  bool typing = false;
  
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Stream<List<Book>> streamBook(){
    try{
      //찾고자 하는 컬렉션의 스냅샷(Stream)을 가져온다.
      final Stream<QuerySnapshot> snapshots = firestore.collection('user').snapshots();

      //새낭 스냅샷(Stream)내부의 자료들을 List<MessageModel> 로 변환하기 위해 map을 사용하도록 한다.
      //참고로 List.map()도 List 안의 element들을 원하는 형태로 변환하여 새로운 List로 반환한다
      return snapshots.map((querySnapshot){
        List<Book> book = [];//querySnapshot을 message로 옮기기 위해 List<MessageModel> 선언
        querySnapshot.docs.forEach((element) { //해당 컬렉션에 존재하는 모든 docs를 순회하며 messages 에 데이터를 추가한다.
          book.add(Book(element.data()));

          });
        return book; //QuerySnapshot에서 List<MessageModel> 로 변경이 됐으니 반환
      }); //Stream<QuerySnapshot> 에서 Stream<List<MessageModel>>로 변경되어 반환됨
    }catch(ex){//오류 발생 처리
      log('error)',error: ex.toString(),stackTrace: StackTrace.current);
      return Stream.error(ex.toString());
    }
  }

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // // appBar: AppBar(
      // //   centerTitle: false,
      // //   // leading widget of appBar: one widget should follow
      // //   // leading: IconButton(
      // //   //   // right after the 'refresh button' pressed,
      // //   //   // the future-stream mode toggled
      // //   //   onPressed: Text(" "),
      // //   //   icon: Icon(Icons.toggle_on),
      // //   // ),
      // //   // title widget of appBar
      // //   title: const Text(
      // //     'Future Todo List'
      // //   ),
      // //   // action widgets of appBar: widget list should follow
      // //   actions: [
      // //     // 'refresh button' displayed when 'isFuture' is true
      // //
      // //     IconButton(
      // //         // right after the 'refresh button' pressed,
      // //         // following function executes (refreshing screen)
      // //       onPressed: () => setState(() {}),
      // //       icon: const Icon(Icons.refresh),
      // //     ),
      // //     // TO-DO item can be added by pressing 'add button'
      // //     IconButton(
      // //       // right after the 'add button' pressed,
      // //       // following function executes
      // //       onPressed: () async {
      // //         // asking TO-DO title dialog is displayed
      // //         await showDialog(
      // //           context: context,
      // //           // build the dialog widget
      // //           builder: (context) => AlertDialog(
      // //             title: const Text('Enter your TODO'),
      // //             content: TextField(
      // //               controller: controller,
      // //               autofocus: true,
      // //             ),
      // //             actions: [
      // //               TextButton(
      // //                 // right after the 'submit button' pressed,
      // //                 // following function executes
      // //                 onPressed: () {
      // //                   // TO-DO item would be added on firebase
      // //                   FirebaseFirestore.instance.collection('user').add({
      // //                     // 'title': controller.text,
      // //                     // 'done': false,
      // //                     // 'createTime': Timestamp.now(),
      // //                     'email': "a",
      // //                     'name': "a",
      // //                     'ID': "a",
      // //                   });
      // //                   // clear text editing controller:
      // //                   // avoid remaining text in the input field later
      // //                   // close the dialog
      // //                   // Navigator.pop(context);
      // //                   // recall and rebuild the screen
      // //                   setState(() {});
      // //                 },
      // //                 child: const Text('Submit'),
      // //               ),
      // //             ],
      // //           ),
      // //         );
      // //         controller.clear();
      // //       },
      // //       icon: const Icon(Icons.add),
      // //     ),
      // //   ],
      // // ),
      // // according to the value of 'isFuture' variable,
      // // FutureBuilder and StreamBuilder would be toggled
      // body: FutureBuilder<QuerySnapshot>(
      //   // for the FutureBuilder, get() function is used
      //   future: FirebaseFirestore.instance
      //       .collection('user')
      //       .get(),
      //   builder: (context, snapshot) {
      //     // when the snapshot has no data,
      //     // return with null Scaffold
      //     if (!snapshot.hasData) return const Scaffold();
      //     // otherwise, data be shown in ListView
      //     return ListView(
      //       // snapshot data mapped to list of ListTile
      //       // from List<_JsonQueryDocumentSnapshot> to List<ListTile>
      //       children: snapshot.data!.docs.map((book) {
      //         // ListTile widget of each TO-DO item
      //         return ListTile(
      //           contentPadding: const EdgeInsets.all(20.0),
      //           // leading: IconButton(
      //           //   // right after the 'edit button' pressed,
      //           //   // following function executes
      //           //   onPressed: () {
      //           //     // whether TO-DO item is done or not would be updated on firebase
      //           //     FirebaseFirestore.instance
      //           //         .collection('user').doc(book.id).update({
      //           //       'name': !book['name'],
      //           //     });
      //           //     // recall and rebuild the screen
      //           //     setState(() {});
      //           //   },
      //           //   // according to value of 'done',
      //           //   // icon would be toggled
      //           //   icon: Icon(book['name']
      //           //       ? Icons.check_box
      //           //       : Icons.check_box_outline_blank,
      //           //   ),
      //           // ),
      //           title: Text(book['email'],
      //             style: Theme.of(context).textTheme.titleLarge,
      //           ),
      //           // subtitle: Text(
      //           //   // date data can be formatted to string
      //           //   DateFormat.yMMMd().add_Hm().format(todo['createTime'].toDate()),
      //           // ),
      //           trailing: Row(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               // IconButton(
      //               //   onPressed: () async {
      //               //     controller.text = book['email'];
      //               //     // asking TO-DO title dialog is displayed
      //               //     await showDialog(
      //               //       context: context,
      //               //       // build the dialog widget
      //               //       builder: (context) => AlertDialog(
      //               //         title: const Text('Enter your TODO'),
      //               //         content: TextField(
      //               //           controller: controller,
      //               //           autofocus: true,
      //               //         ),
      //               //         actions: [
      //               //           TextButton(
      //               //             // right after the 'submit button' pressed,
      //               //             // following function executes
      //               //             onPressed: () {
      //               //               // TO-DO item would be updated on firebase
      //               //               FirebaseFirestore.instance
      //               //                   .collection('todos').doc(book.id).update({
      //               //                 'email': controller.text,
      //               //               });
      //               //               // close the dialog
      //               //               // Navigator.pop(context);
      //               //               // recall and rebuild the screen
      //               //               setState(() {});
      //               //             },
      //               //             child: const Text('Submit'),
      //               //           ),
      //               //         ],
      //               //       ),
      //               //     );
      //               //     controller.clear();
      //               //   },
      //               //   icon: const Icon(Icons.edit),
      //               // ),
      //               // IconButton(
      //               //   onPressed: () {
      //               //     // TO-DO item would be deleted on firebase
      //               //     FirebaseFirestore.instance.collection('user')
      //               //         .doc(book.id).delete();
      //               //     // recall and rebuild the screen
      //               //     setState(() {});
      //               //   },
      //               //   icon: const Icon(Icons.delete),
      //               // ),
      //             ],
      //           ),
      //         );
      //       }).toList(),
      //     );
      //   },
      // )
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            }
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 12),
              child: Text (
                "장르별 추천",
                style: TextStyle (
                  fontSize: 30,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, bottom: 10),
              child: Text (
                "SF",
                style: TextStyle (
                  fontSize: 20,
                ),
              ),
            ),
            Padding (
              padding: const EdgeInsets.only(left: 12),
              child: SingleChildScrollView (
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget> [
                    GestureDetector(
                      child: Image.network(
                          "http://image.yes24.com/goods/116208935/XL",
                          width: 150,
                          height: 220,
                          fit: BoxFit.fill
                      ),
                      onTap:() {
                        //@ 이미지 클릭
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: GestureDetector(
                        child: Image.network(
                            "http://image.yes24.com/goods/116208935/XL",
                            width: 150,
                            height: 220,
                            fit: BoxFit.fill
                        ),
                        onTap:() {
                          print("pressed!");
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: GestureDetector(
                        child: Image.network(
                            "http://image.yes24.com/goods/116208935/XL",
                            width: 150,
                            height: 220,
                            fit: BoxFit.fill
                        ),
                        onTap:() {
                          print("pressed!");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, bottom: 10),
              child: Text (
                "액션",
                style: TextStyle (
                  fontSize: 20,
                ),
              ),
            ),
            Padding (
              padding: const EdgeInsets.only(left: 12),
              child: SingleChildScrollView (
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget> [
                    GestureDetector(
                      child: Image.network(
                          "http://image.yes24.com/goods/116208935/XL",
                          width: 150,
                          height: 220,
                          fit: BoxFit.fill
                      ),
                      onTap:() {
                        print("pressed!");
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: GestureDetector(
                        child: Image.network(
                            "http://image.yes24.com/goods/116208935/XL",
                            width: 150,
                            height: 220,
                            fit: BoxFit.fill
                        ),
                        onTap:() {
                          print("pressed!");
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: GestureDetector(
                        child: Image.network(
                            "http://image.yes24.com/goods/116208935/XL",
                            width: 150,
                            height: 220,
                            fit: BoxFit.fill
                        ),
                        onTap:() {
                          print("pressed!");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 20, bottom: 10),
              child: Text (
                "미스터리",
                style: TextStyle (
                  fontSize: 20,
                ),
              ),
            ),
            Padding (
              padding: const EdgeInsets.only(left: 12),
              child: SingleChildScrollView (
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget> [
                    GestureDetector(
                      child: Image.network(
                          "http://image.yes24.com/goods/116208935/XL",
                          width: 150,
                          height: 220,
                          fit: BoxFit.fill
                      ),
                      onTap:() {
                        print("pressed!");
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: GestureDetector(
                        child: Image.network(
                            "http://image.yes24.com/goods/116208935/XL",
                            width: 150,
                            height: 220,
                            fit: BoxFit.fill
                        ),
                        onTap:() {
                          print("pressed!");
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: GestureDetector(
                        child: Image.network(
                            "http://image.yes24.com/goods/116208935/XL",
                            width: 150,
                            height: 220,
                            fit: BoxFit.fill
                        ),
                        onTap:() {
                          print("pressed!");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   // This method is rerun every time setState is called, for instance as done
  //   // by the _incrementCounter method above.
  //   //
  //   // The Flutter framework has been optimized to make rerunning build methods
  //   // fast, so that you can just rebuild anything that needs updating rather
  //   // than having to individually change instances of widgets.
  //   return Scaffold(
  //     appBar: AppBar(
  //       // Here we take the value from the MyHomePage object that was created by
  //       // the App.build method, and use it to set our appbar title.
  //       leading: IconButton(
  //         icon: const Icon(
  //           Icons.menu,
  //           semanticLabel: 'menu',
  //         ),
  //         onPressed: (){
  //           Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(title: 'login')));
  //         },
  //       ),
  //       title: Text(widget.title),
  //     ),
  //     body:
  //     StreamBuilder<List<Book>>(
  //       // stream: firestore.collection('user').snapshots(),
  //       stream: streamBook(),
  //       builder: (context, snapshot) {
  //         return Container(
  //           // Center is a layout widget. It takes a single child and positions it
  //           // in the middle of the parent.
  //           //   child: Column(
  //           //     children: [
  //           //       Expanded(
  //           //           child: ListView.builder(
  //           //             scrollDirection: Axis.horizontal,
  //           //               itemCount: snapshot.data?.length,
  //           //               itemBuilder: (context, index){
  //           //                 return ListTile(
  //           //                   title: Text(snapshot.toString()),
  //           //                 );
  //           //               }
  //           //           ),
  //           //       ),
  //           //     ],
  //           //   ),
  //             // Column is also a layout widget. It takes a list of children and
  //             // arranges them vertically. By default, it sizes itself to fit its
  //             // children horizontally, and tries to be as tall as its parent.
  //             //
  //             // Invoke "debug painting" (press "p" in the console, choose the
  //             // "Toggle Debug Paint" action from the Flutter Inspector in Android
  //             // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
  //             // to see the wireframe for each widget.
  //             //
  //             // Column has various properties to control how it sizes itself and
  //             // how it positions its children. Here we use mainAxisAlignment to
  //             // center the children vertically; the main axis here is the vertical
  //             // axis because Columns are vertical (the cross axis would be
  //             // horizontal).
  //           //   (
  //           //     mainAxisAlignment: MainAxisAlignment.center,
  //           //     children: <Widget>[
  //           //     // Text('${snapshot.data?.docs[1].data()}'),
  //           //     // ListView.builder(
  //           //     //   itemCount: snapshot.data?.size,
  //           //     //   itemBuilder: (BuildContext context, int index){
  //           //     //     return Container(
  //           //     //       height: 50,
  //           //     //       child: Center(child: Text('${snapshot.data?.docs[index].id}'),),
  //           //     //     );
  //           //     //   },
  //           //     // ),
  //           //     const Text(
  //           //       'You have pushed the button this many times:',
  //           //     ),
  //           //     Text(
  //           //       '$_counter',
  //           //       style: Theme.of(context).textTheme.headline4,
  //           //     ),
  //           //   ],
  //           // );
  //         );
  //       },
  //       ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //
  //       child: const Icon(Icons.add),
  //     ),
  //     // This trailing comma makes auto-formatting nicer for build methods.
  //   );
  // }
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
          //@ 책 검색
        },
      ),
    );
  }
}