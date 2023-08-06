

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/%20CTopic.dart';
import 'package:flutter_application_1/AlgoTopic.dart';
import 'package:flutter_application_1/Course.dart';
import 'package:flutter_application_1/CppTopic.dart';
import 'package:flutter_application_1/DsTopic.dart';
import 'package:flutter_application_1/cppadvance.dart';
import 'package:flutter_application_1/cppbasic.dart';
import 'package:flutter_application_1/cppinter.dart';
import 'package:flutter_application_1/cppprogramming.dart';
import 'package:flutter_application_1/javaTopic.dart';
import 'package:flutter_application_1/pythonTopic.dart';
import 'package:flutter_application_1/sub_courselist.dart';



import 'Login.dart';



void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-learning & Quiz App',
      initialRoute: '/',
      routes: {
        '/':(context)=>Loginpage(),
        '/signup':(context)=>const RegistrationScreen(),


        '/course':(context)=>Coursepage(),


        '/c':(context)=>Cprogramingpage(),
         '/cbasictopic':(context)=>Cbasictopicpage(),
         '/cintertopic':(context)=>Cintertopicpage(),
         '/cadvancetopic':(context)=>Cadvancetopicpage(),
        

      

        '/cpp':(context)=>Cpppage(),
        '/cppbasictopic':(context)=>Cppbasictopinpage(),
        '/cppintertopic':(context)=>Cppintertopicpage(),
        '/cppadvancetopic':(context)=>Cppadvancetopicpage(),


        '/java':(context) => Javapage(),
        '/javabasictopic' : (context)=> javabasictopicpage(),
        '/javaintertopic' :(context)=> Javaintertopic(),
        '/javaadvancetopic' :(context)=> javaadvancetopicpage(),


        '/python' : (context)=> Pythonpage(),
        '/pyhonbasictopic' : (context)=> Pythonbasictopinpage(),
        '/pyhonintertopic' : (context)=> Pythonintertopicpage(),
        '/pythonadvanceopic' :(context)=> pythonadvancetopicpage(),
        

        '/ds': (context)=>dspage(),
        '/dsbasictopic' : (context) => dsbasictopinpage(),
        '/dsintertopic' : (context) => dsintertopicpage(),
        '/dsadvancetopic' : (context) => dsadvancetopicpage(),


        '/algo' : (context) =>algopage(),
        '/algobasictopic':(context) => Algobasictopic(),
        '/algointertopic':(context) => algointertopic(),
        '/algoadvancetopic':(context) => Algoadvancetopicpage(),

        
      },

    );
  }
}

