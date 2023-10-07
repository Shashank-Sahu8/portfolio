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
      backgroundColor: Colors.black54,
      drawer: NavBar(),
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Portfolio",style: TextStyle(fontFamily: 'PermanentMarker-Regular',fontSize: 20,fontWeight: FontWeight.bold,shadows: [Shadow(blurRadius: 10.0,color: Colors.blueGrey,offset: Offset(1.0,1.0))]),),
      ),
      body:new Stack(
        fit: StackFit.expand,
        children:[
          new Image(image: new NetworkImage('https://i.pinimg.com/736x/b9/ce/ce/b9cece2ef70d06aca872a6f3ffe14e36.jpg'),fit: BoxFit.cover,color:Colors.black87 ,colorBlendMode: BlendMode.multiply,),
          new Container(
        child: Center(
          child: Column(
            children: [
              new Padding(padding: EdgeInsets.only(top:50.0 ) ,

              child:new CircleAvatar(
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/011/675/365/original/man-avatar-image-for-profile-png.png'),
                backgroundColor: Colors.blue,
                radius: 90,
              ),

    ),
              new Padding(padding: EdgeInsets.only(top:50.0 ),
              child:new Text("Shashank Sahu",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,shadows: [ Shadow(blurRadius: 12.0,color: Colors.blueAccent,offset: Offset(2.3,2.5))]),),
              ),

              new Padding(padding: EdgeInsets.only(top:50.0 ),
                child:new Text("Flutter Develpoer",style: TextStyle(fontSize: 25,color: Colors.white,fontFamily:'Creepster-Regular',fontWeight: FontWeight.bold,shadows: [ Shadow(blurRadius: 10.0,color: Colors.blueAccent,offset: Offset(2.0,2.0))]),),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Padding(padding: EdgeInsets.only(top:10.0 ,left: 25.0),
                    child:new Text("Know more about me",style: TextStyle(fontSize: 15,color: Colors.white,fontFamily:'Creepster-Regular',fontWeight: FontWeight.bold,shadows: [ Shadow(blurRadius: 10.0,color: Colors.blueAccent,offset: Offset(2.0,2.0))]),),
                  ),
                  new Padding(padding: EdgeInsets.only(top:10.0),
                    child: new IconButton(onPressed:()=>{} , icon: Icon(Icons.arrow_downward,size: 25.0,color: Colors.white,),),
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top:3.0 ),
                child:new IconButton(onPressed:()=>{Navigator.push(context, MaterialPageRoute(builder: (context){return about();}))} , icon: Icon(Icons.account_box,size: 40.0,color: Colors.white,shadows: [Shadow(blurRadius: 15.0,color: Colors.pink,offset: Offset(1.0,1.0))],),),
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Padding(padding: EdgeInsets.only(top:50.0),
                  child: new IconButton(onPressed:()=>{} , icon: Icon(Icons.facebook,size: 30.0,color: Colors.white,),),
                  ),
                  new Padding(padding: EdgeInsets.only(top:50.0,left: 30),
                    child: new IconButton(onPressed:()=>{} , icon: Icon(Icons.mail,size: 30.0,color: Colors.white,),),
                  ),
                  new Padding(padding: EdgeInsets.only(top:50.0,left: 30),
                    child: new IconButton(onPressed:()=>{} , icon: Icon(Icons.account_balance,size: 30.0,color: Colors.white,),),
                  ),
                  new Padding(padding: EdgeInsets.only(top:50.0,left: 30),
                    child: new IconButton(onPressed:()=>{} , icon: Icon(Icons.watch,size: 30.0,color: Colors.white,),),
                  )
                ],

              )
                ],
          ),
        ),

        ),
      ],
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



