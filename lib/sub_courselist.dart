import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cprogramingpage extends StatefulWidget {
  const Cprogramingpage({super.key});

  @override
  State<Cprogramingpage> createState() => _CprogramingpageState();
}

class _CprogramingpageState extends State<Cprogramingpage> {
 
  List<String> images = [
    "assets/images/c.png",
    "assets/images/c.png",
    "assets/images/c.png",
    
   
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
          customcard("", images[0], des[0],'/cbasictopic'),
          customcard("", images[1], des[1],'/cintertopic'),
          customcard("", images[2], des[2],'/cadvancetopic'),
        ],
      ),
    );
  }
}










//cpp

class Cpppage extends StatefulWidget {
  const Cpppage({super.key});

  @override
  State<Cpppage> createState() => _CpppageState();
}

class _CpppageState extends State<Cpppage> {
 
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
          "C++ Programming",
          style: TextStyle(
            fontFamily: "Quando",
          ),
          
        ),

        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: <Widget>[
          customcard("", images[0], des[0],'/cppbasictopic'),
          customcard("", images[1], des[1],'/cppintertopic'),
          customcard("", images[2], des[2],'/cppadvancetopic'),
        ],
      ),
    );
  }
}





// java

class Javapage extends StatefulWidget {
  const Javapage({super.key});

  @override
  State<Javapage> createState() => _JavapageState();
}

class _JavapageState extends State<Javapage> {
 

  List<String> images = [
    "assets/images/java.png",
    "assets/images/java.png",
    "assets/images/java.png",
    
   
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
          "Java Programming",
          style: TextStyle(
            fontFamily: "Quando",
          ),
          
        ),

        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: <Widget>[
          customcard("", images[0], des[0],'/javabasictopic'),
          customcard("", images[1], des[1],'/javaintertopic'),
          customcard("", images[2], des[2],'/javaadvancetopic'),
        ],
      ),
    );
  }
}




//python

class Pythonpage extends StatefulWidget {
  const Pythonpage({super.key});

  @override
  State<Pythonpage> createState() => _PythonpageState();
}

class _PythonpageState extends State<Pythonpage> {
 


  List<String> images = [
    "assets/images/python.png",
    "assets/images/python.png",
    "assets/images/python.png",
    
   
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
          "Python Programming",
          style: TextStyle(
            fontFamily: "Quando",
          ),
          
        ),

        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: <Widget>[
          customcard("", images[0], des[0],'/pyhonbasictopic'),
          customcard("", images[1], des[1],'/pyhonintertopic'),
          customcard("", images[2], des[2],'/pythonadvanceopic'),
        ],
      ),
    );
  }
}



//ds

class dspage extends StatefulWidget {
  const dspage({super.key});

  @override
  State<dspage> createState() => _dspageState();
}

class _dspageState extends State<dspage> {
  

  List<String> images = [
    "assets/images/images (1).png",
    "assets/images/images (1).png",
    "assets/images/images (1).png",
    
    
   
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
          "Data Structure",
          style: TextStyle(
            fontFamily: "Quando",
          ),
          
        ),

        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: <Widget>[
          customcard("", images[0], des[0],'/dsbasictopic'),
          customcard("", images[1], des[1],'/dsintertopic'),
          customcard("", images[2], des[2],'/dsadvancetopic'),
        ],
      ),
    );
  }
}







//algo
class algopage extends StatefulWidget {
  const algopage({super.key});

  @override
  State<algopage> createState() => _algopageState();
}

class _algopageState extends State<algopage> {


 
  List<String> images = [
    "assets/images/algo.png",
    "assets/images/algo.png",
    "assets/images/algo.png",
    
   
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
          "Algorithm",
          style: TextStyle(
            fontFamily: "Quando",
          ),
          
        ),

        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView(
        children: <Widget>[
          customcard("", images[0], des[0],'/algobasictopic'),
          customcard("", images[1], des[1],'/algointertopic'),
          customcard("", images[2], des[2],'/algoadvancetopic'),
        ],
      ),
    );
  }
}
