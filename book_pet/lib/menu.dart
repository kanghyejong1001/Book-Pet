
import 'package:book_pet/home.dart';
import 'package:flutter/material.dart';
import 'package:book_pet/profilePage.dart';

import 'bookList.dart';
import 'login.dart';

class SideMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback onTap;
  final bool active;

  const SideMenuItem({required this.title, required this.icon, required this.onTap, required this.active, Key? key})
      : super(key: key);



  // leading: IconButton(
  // icon: const Icon(
  // Icons.menu,
  // semanticLabel: 'menu',
  // ),
 /* onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(title: 'login')));
  },*/


  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      selectedTileColor: Colors.white,
      selected: active,
      onTap: onTap,
      leading:
      Icon(
        icon,
        color: Colors.black54,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

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
            SideMenuItem(
              title: '홍길동',
              icon: Icons.circle,
              onTap: () {
                Navigator.pushNamed(context, '/profile');
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              active: true
            ),
                 // const Divider(),
            SideMenuItem(
                title: 'gildong@gmail.com',
                icon: Icons.circle,
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                active: true
            ),
                 const Divider(),
             SideMenuItem(
                title: '마이 홈',
                icon: Icons.circle,
                onTap: () {
                  Column(
                  children: [
                    ListTile(
                        title: Text('마이페이지'),
                        onTap: () {  Navigator.pushNamed(context, '/bookList');
                          },
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color:Colors.white60,
                        )
                    ),
                    ListTile(
                        title: Text('나의 서재'),
                        onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(title: 'Menu')));},//안보임
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color:Colors.white60,
                        )
                    ),

                      ListTile(
                      title: Text('책'),
                        onTap:() { Navigator.push(context, MaterialPageRoute(builder: (context) => const BookList()));},
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color:Colors.white60,
                        )
                    ),
                    //   ListTile(
                    //   title: Text('취향 선택'),
                    //     onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => genreChoice(title: 'Menu')));},//근데 안쓴다고 했었나?
                    //     leading: Icon(
                    //       Icons.arrow_right_rounded,
                    //       color:Colors.white60,
                    //     )
                    // ),
                    ListTile(
                        title: Text('북펫'),
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(title: 'Menu')));},//안쓴다고 함
                        leading: Icon(
                          Icons.arrow_right_rounded,
                          color:Colors.white60,
                        )
                    ),

                  ],
                );

                  },

              active: true,),
          const Divider(),
            SideMenuItem(
                title: '메인 페이지',
                icon: Icons.circle,
                onTap: () {
                  Navigator.pushNamed(context, '/bookList');
                  },
                active: true
            ),
            const Divider(),
            SideMenuItem(
                title: '모임',
                icon: Icons.circle,
                onTap: () {
                  Navigator.pushNamed(context, '/bookList');
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const BookList()));
                  },
                active: true
            ),
                const Divider(),
             ],
        ),

             ),

         );


  }

}
