import 'package:flutter/material.dart';
import 'menu.dart';

class bookMeetingInfo extends StatefulWidget{
  const bookMeetingInfo({super.key, required this. title});

  final String title;

  @override
  State<StatefulWidget> createState() => _meetingInfoState();

}

// class _meetingInfoState extends State<bookMeetingInfo>{
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.purple.shade200,
//           title: Text('모임 정보'),
//           leading: IconButton(
//             icon: const Icon(
//               Icons.menu,
//               semanticLabel: 'menu',
//             ),
//             onPressed: (){
//               // Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(title: 'Menu')));
//             },
//           ),
//         ),
//         body: const bookMeetingInfo(title: 'Flutter Demo Home Page'),
//       ),
//     );
//   }
// }


class _meetingInfoState extends State<bookMeetingInfo>{
  @override
  Widget build(BuildContext context) {
    EdgeInsets TopMargin = const EdgeInsets.only(top: 100);
    EdgeInsets HorizontalMargin = const EdgeInsets.symmetric(horizontal: 10);

    return Scaffold(
      body: Container(
        height: 650,
        width: 400,
        margin: TopMargin + HorizontalMargin,


        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Container(
                  width: 120,
                  height: 180,
                  margin: EdgeInsets.only(left: 10) ,
                  decoration: const BoxDecoration(image: DecorationImage
                    (image: AssetImage('assets/images/angelique.png'))),

                ),
                Container(
                    width: 230,
                    height: 120,
                    margin: EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text('기욤 뮈소 신작이면 읽어야지',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18

                      ),
                    )
                )
              ],

            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              child:Row(mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                             image: DecorationImage(image: AssetImage('assets/images/gildong.png'))
                          ),
                        ),
                        Container(
                            child: const Text('안상준',
                              textAlign: TextAlign.center,))
                      ],

                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                              image: DecorationImage(image: AssetImage('assets/images/basic.png'))
                          ),
                        ),
                        Container(
                            child: const Text('강혜종',
                              textAlign: TextAlign.center,))
                      ],

                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                              image: DecorationImage(image: AssetImage('assets/images/basic.png'))
                          ),
                        ),
                        Container(
                            child: const Text('김지연',
                              textAlign: TextAlign.center,))
                      ],

                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                              image: DecorationImage(image: AssetImage('assets/images/basic.png'))
                          ),
                        ),
                        Container(
                            child: const Text('이정윤',
                              textAlign: TextAlign.center,))
                      ],

                    ),
                  ),Container(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                              image: DecorationImage(image: AssetImage('assets/images/basic.png'))
                          ),
                        ),
                        Container(
                            child: const Text('송수민',
                              textAlign: TextAlign.center,))
                      ],

                    ),
                  ),



                ],
              ),),

            Column(
              children: const [

                Padding(padding: EdgeInsets.only(top:10),
                  child: Text('모임 소개', textAlign: TextAlign.start, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Text('소개글', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey)),


              ],
            )
          ],



        ),



      ),


    );
  }

}
