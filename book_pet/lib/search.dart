import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class MyTextFieldWidget extends StatefulWidget {
  const MyTextFieldWidget({Key? key}) : super(key: key);

  @override
  State<MyTextFieldWidget> createState() => _MyTextFieldWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
            }
        ),
      ),
      body: Padding(
        //상하좌우로 띄워주기 (아이콘 왼쪽과 텍스트 필드 오른쪽이 화면 테두리와 조금 떨어져 있다.)
        padding: const EdgeInsets.all(20),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            //labelText: '아무거나 입력하세요',
            //hintText: '???',  //글자를 입력하면 사라진다.
            //icon: Icon(Icons.android),
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(10)
          ),
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Thanks!'),
                  content: Text(
                      'You typed "$value", which has length ${value.characters.length}.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}