import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cppprogramingpage extends StatefulWidget {
  const Cppprogramingpage({super.key});

  @override
  State<Cppprogramingpage> createState() => _CppprogramingpageState();
}

class _CppprogramingpageState extends State<Cppprogramingpage> {
 
  List<String> images = [
    "assets/images/c++.png",
    "assets/images/c++.png",
    "assets/images/c++.png",
    
   
  ];





  List<String> des = ["Basic","Intermediate","Advance"];




  Widget customcard(String langname, String image, String des,String nav){
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 40,     ),
      child: InkWell(
        onTap: (){
           Navigator.pushNamed(context, nav);
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: const TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontFamily: "Alike",
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "C Programming",
          style: TextStyle(
            fontFamily: "Quando",
          ),
          
        ),

        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: <Widget>[
          customcard("", images[0], des[0],'/cppbasic'),
          customcard("", images[1], des[1],'/cppinter'),
          customcard("", images[2], des[2],'/cppadvance'),
        ],
      ),
    );
  }
}