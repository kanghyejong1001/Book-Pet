import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';


class BookInfo extends StatefulWidget{
  const BookInfo({super.key, required this. title});

  final String title;

  @override
  State<StatefulWidget> createState() => _BookInfoState();

}

class _BookInfoState extends State<BookInfo>{
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
          color: Colors.purple.shade50,
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
                    (image: AssetImage('assets/images/Angelique.jpeg'))),

                ),
                Container(
                  width: 230,
                  height: 120,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text('안젤리크',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22

                            ),
                          )
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.only(top: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text('기욤 뮈소 | 밝은 세상',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                            ),)
                      ),
                      Container(

                        margin: EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.all(5.0),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: const [
                            Text('별점: ',

                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey
                                )),
                            Icon(
                                Icons.star,
                                color: Colors.purple,
                                size: 20.0
                            ),
                            Icon(
                                Icons.star,
                                color: Colors.purple,
                                size: 20.0
                            ),
                            Icon(
                                Icons.star,
                                color: Colors.purple,
                                size: 20.0
                            ),
                            Icon(
                                Icons.star,
                                color: Colors.purple,
                                size: 20.0
                            ),
                            Icon(
                                Icons.star_border_outlined,
                                color: Colors.purple,
                                size: 20.0
                            ),

                          ],



                        ),


                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.only(top:5.0),
                          alignment: Alignment.centerLeft,
                          child: const Text('#사랑, #죽음',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey

                            ),
                          )
                      ),


                    ],
                  ),


                )
              ],

            ),
            Container(
                child:  ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(8),
                  children: [
                    Container(
                      height: 30,
                      child: Text('상세정보', textAlign: TextAlign.center),
                    ),
                    Container(
                        height: 60,
                        child: Center(child: Text('...', style: TextStyle(color: Colors.grey),),)
                    ),
                    Container(
                      height: 30,
                      child: Text('에디터 리뷰', textAlign: TextAlign.center),
                    ),
                    Container(
                        height: 60,
                        child: Center(child: Text('...', style: TextStyle(color: Colors.grey),),)
                    ),
                    Container(
                      height: 30,
                      child: Text('독자 리뷰', textAlign: TextAlign.center),
                    ),
                    Container(
                        height: 60,
                        child: Center(child: Text('...', style: TextStyle(color: Colors.grey),),)
                    ),
                    Container(
                      height: 30,
                      child: Text('독서 모임', textAlign: TextAlign.center),

                    ), Container(
                        height: 60,
                        child: Center(child: Text('...', style: TextStyle(color: Colors.grey),),)
                    ),
                  ],
                )
            )


          ],



        ),



      ),


    );
  }

}