import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback onTap;
  final bool active;

  const SideMenuItem({required this.title, required this.icon, required this.onTap, required this.active, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32));
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      selectedTileColor: Colors.white,
      selected: active,
      onTap: () {},
      leading: Icon(
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
              title: '안상준',
              icon: Icons.circle,
              onTap: () { /* react to the tile being tapped */ },
              active: true
            ),
                 const Divider(),
            SideMenuItem(
                title: 'gildong@gmail.com',
                icon: Icons.circle,
                onTap: () { /* react to the tile being tapped */ },
                active: true
            ),
                 const Divider(),
            SideMenuItem(
                title: '마이 홈',
                icon: Icons.circle,
                onTap: () { /* react to the tile being tapped */ },
                active: true
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
            SideMenuItem(
                title: '메인 페이지',
                icon: Icons.circle,
                onTap: () { /* react to the tile being tapped */ },
                active: true
            ),
            SideMenuItem(
                title: '모임',
                icon: Icons.circle,
                onTap: () { /* react to the tile being tapped */ },
                active: true
            ),
                const Divider(),
          ],
        ),

             ),

         );


  }

}
