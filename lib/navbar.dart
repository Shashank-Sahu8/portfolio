import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: new Text("Shashank Sahu",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,shadows: [ Shadow(blurRadius: 5.0,color: Colors.blueAccent,offset: Offset(1.0,1.0))]),),
              accountEmail: new Text("shashanksahu123@gmail.com",style: TextStyle(fontSize: 15,color: Colors.white,shadows: [ Shadow(blurRadius: 5.0,color: Colors.blueAccent,offset: Offset(1.0,1.0))]),),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white70,
                backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/7/618/png-transparent-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl-heroes-thumbnail.png'),
              ),
            decoration: BoxDecoration(
              color:const Color(000000),
              image: new DecorationImage(image: NetworkImage('https://t3.ftcdn.net/jpg/01/23/49/80/360_F_123498067_ufF773Ksk07VpA4s8bovUvH0TAtDSnND.webp',),fit: BoxFit.cover,colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),),
            ),
          )
        ],
      ),
    );
  }
}
