import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      buildContainer(context, '책을 읽은 횟수', '127'),
      buildContainer(context, '연속 독서 횟수', '16'),
      buildContainer(context, '내가 쓴 독후감', '12'),
      buildContainer(context, '참여한 독서모임', '4'),
    ],
  );

  Widget buildContainer(BuildContext context, String value, String text) =>
      Container(
        alignment: Alignment(-0.5, 0.0),
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value + " | ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      );
}