import 'package:flutter/material.dart';
import 'package:my_portfolio/navbar.dart';
import 'package:my_portfolio/splashs_screen.dart';
import 'package:my_portfolio/contact_me.dart';
import 'package:my_portfolio/about.dart';
import 'package:my_portfolio/usefull_links.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink),
        home:SplashScreen()
    );
  }
}

class thispage extends StatefulWidget {
  const thispage({super.key});

  @override
  State<thispage> createState() => _thispageState();
}

class _thispageState extends State<thispage> {

  int counter=0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black12,
      drawer: NavBar(),
      appBar: new AppBar(),
      body:new Container(
        child: Center(
          child: Column(
            children: [
              new Padding(padding: EdgeInsets.only(top:100.0 ) ,
              child:new CircleAvatar(
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/011/675/365/original/man-avatar-image-for-profile-png.png'),
                backgroundColor: Colors.blue,
                radius: 90,
              ),
    ),
              new Padding(padding: EdgeInsets.only(top:70.0 ),
              child:new Text("Shashank Sahu",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,shadows: [ Shadow(blurRadius: 12.0,color: Colors.blueAccent,offset: Offset(2.3,2.5))]),),
              ),

              new Padding(padding: EdgeInsets.only(top:50.0 ),
                child:new Text("App Develpoer",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,shadows: [ Shadow(blurRadius: 10.0,color: Colors.blueAccent,offset: Offset(2.0,2.0))]),),
              )
                ],
          ),
        ),

        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          new Container(
            padding:EdgeInsets.all(10),
            child:new Text("$counter like",style: TextStyle(color: Colors.white,fontSize: 17),),
          ),
      new Container(
              
            height: 30,
            width: 30,
            child: new FloatingActionButton(
                onPressed: _incrementCounter,
                child: Icon(Icons.thumb_up),
            ),
          ),
        ],
      ),
    );
  }
}



