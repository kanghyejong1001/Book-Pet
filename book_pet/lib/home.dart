import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';

import 'menu.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
      //       children: snapshot.data!.docs.map((bookList) {
      //         // ListTile widget of each TO-DO item
      //         return ListTile(
      //           contentPadding: const EdgeInsets.all(20.0),
      //           // leading: IconButton(
      //           //   // right after the 'edit button' pressed,
      //           //   // following function executes
      //           //   onPressed: () {
      //           //     // whether TO-DO item is done or not would be updated on firebase
      //           //     FirebaseFirestore.instance
      //           //         .collection('user').doc(bookList.id).update({
      //           //       'name': !bookList['name'],
      //           //     });
      //           //     // recall and rebuild the screen
      //           //     setState(() {});
      //           //   },
      //           //   // according to value of 'done',
      //           //   // icon would be toggled
      //           //   icon: Icon(bookList['name']
      //           //       ? Icons.check_box
      //           //       : Icons.check_box_outline_blank,
      //           //   ),
      //           // ),
      //           title: Text(bookList['email'],
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
      //               //     controller.text = bookList['email'];
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
      //               //                   .collection('todos').doc(bookList.id).update({
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
      //               //         .doc(bookList.id).delete();
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                child: Text("로그아웃"),
                onPressed:(){
                  FirebaseAuth.instance.signOut();
                }
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}