import 'package:flutter/material.dart';
import 'package:my_portfolio/navbar.dart';
import 'package:my_portfolio/splashs_screen.dart';
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



