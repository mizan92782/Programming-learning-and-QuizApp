import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Coursepage extends StatefulWidget {
  @override
  _CoursepageState createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {



  List<String> images = [
    "assets/images/c.png",
    "assets/images/c++.png",
    "assets/images/java.png",
    "assets/images/python.png",
    "assets/images/images (1).png",
    "assets/images/algo.png"
  ];





  List<String> des = [
    "A prograimmig language",
    "A prograimmig language",
    "A prograimmig language",
    "A prograimmig language",
    "a way of organizing and storing data in a computer's memory in a structured and efficient manner.",
    "An algorithm is a step-by-step procedure or set of instructions designed to solve a specific problem",
    
  ];




  Widget customcard(String langname, String image, String des,String navi){
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
           Navigator.pushNamed(context, navi);
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
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "Alike"
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
          "Course List",
          style: TextStyle(
            fontFamily: "Quando",
          ),
          
        ),

        backgroundColor:  Colors.indigoAccent,
      ),
      body: ListView(
        children: <Widget>[
          customcard("C", images[0], des[0],'/c'),
          customcard("C++", images[1], des[1],'/cpp'),
          customcard("Java", images[2], des[2],'/java'),
          customcard("Python", images[3], des[3],'/python'),
          customcard("Data Structure", images[4], des[4],'/ds'),
          customcard("Algorithm", images[5], des[5],'/algo'),
        ],
      ),
    );
  }
}







//c programmign