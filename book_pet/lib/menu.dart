import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String title;

  const Menu({super.key, required this.title});

  get padding => null;

 /* MaterialButton(
  onPressed: () {},
  color: Colors.blue,
  textColor: Colors.white,
  child: Icon(
  Icons.camera_alt,
  size: 24,
  ),
  padding: EdgeInsets.all(16),
  shape: CircleBorder(),
  )*/



  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white60,
            semanticLabel: 'menu',
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(title: 'Menu')));
          },
        ),
        title: Text(title),

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(

          children: [
            ListTile(

                  title: const Text(
                  '안상준',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),

                    leading: Icon(
                Icons.circle,
                color: Colors.black54,
                ),
                 ),
                 const Divider(),
                   ListTile(
               title: const Text('gildong@gmail.com'),
               leading: Icon(
                Icons.circle,
                color: Colors.black54
                ,
               ),
               ),
                 const Divider(),
                ListTile(
                title: const Text(
                '마이 홈',

                  ),



                 leading: Icon(
                Icons.circle,
                color: Colors.black54
                ,
              ),

                  ),
                Column(
                 children: const [
                ListTile(
                  title: Text('마이페이지'),
                    leading: Icon(
                      Icons.arrow_right_rounded,
                      color:Colors.white60,
                    )
                ),
                ListTile(
                  title: Text('나의 서재'),
                  leading: Icon(
                    Icons.arrow_right_rounded,
                    color:Colors.white60,
                  )
                ),

                ListTile(
                  title: Text('캘린더'),
                    leading: Icon(
                      Icons.arrow_right_rounded,
                      color:Colors.white60,
                    )
                ),
                ListTile(
                  title: Text('취향 선택'),
                    leading: Icon(
                      Icons.arrow_right_rounded,
                      color:Colors.white60,
                    )
                ),
                ListTile(
                  title: Text('북펫'),
                    leading: Icon(
                      Icons.arrow_right_rounded,
                      color:Colors.white60,
                    )
                ),

              ],
            ),

                const Divider(),
               ListTile(
              title: const Text('메인 페이지'),
              leading: Icon(
                Icons.circle,
                color: Colors.black54
                ,
              ),
                ),
                const Divider(),
                ListTile(
               title: const Text('모임'),
               leading: Icon(
                Icons.circle,
                color: Colors.black54
                ,
                ),
              ),
                const Divider(),
          ],
        ),

             ),

         );


  }

}
