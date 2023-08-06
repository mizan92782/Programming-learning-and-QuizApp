import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cquiz.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';



class javabasictopicpage extends StatefulWidget {
  const javabasictopicpage({super.key});

  @override
  State<javabasictopicpage> createState() => _javabasictopicpageState();
}

class _javabasictopicpageState extends State<javabasictopicpage> {
  
  Widget customCard(String one, String two,
      Widget Function(BuildContext) classBuilder, BuildContext context) {
    return Card(
      color: Colors.indigoAccent,
      child: InkWell(
        highlightColor: Colors.green,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => classBuilder(context)),
          );
        },
        child: ListTile(
          autofocus: true,
          leading: const Icon(
            Icons.subject,
          ),
          iconColor: Colors.white,
          title: Text(
            one,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            two,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "java learning",
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.indigoAccent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Card(
                color: Colors.indigoAccent,
                child: Container(
                    width: 350,
                    child: const ListTile(
                      title: Text(
                        "  Java Programmig Basic",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            customCard("Introduction", "History of java programming",
                (context) => const Introduction(), context),
            customCard("Features", "Features of java programming",
                (context) => const Features(), context),
            customCard("Main Function", "Main function of C++ programming",
                (context) => Mainfunction(), context),
            customCard("Variable", "Varaible that contain value",
                (context) => Variable(), context),
            customCard("Data Type", "Int,Char,Double,Float etc",
                (context) => DataType(), context),
            customCard("Input/Output", "standard input/output(stdio)",
                (context) => Inputoutput(), context),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              child: const Card(
                  color: Colors.indigoAccent,
                  child: Center(
                    child: Text(
                      "Knowledge Check",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(onPressed: () {

                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));
              }, 
              child: const Text("Quiz 1")),
              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));}, child: const Text("Quiz 2")),
              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));}, child: const Text("Quiz 3")),
            ]),
          ],
        ),
      ),
    );
  }
}


class Introduction extends StatelessWidget {
  const Introduction({super.key});



Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Introduction of java "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("History of java programming\n"),

                Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/java.png",
),
),
),
),

                _normaltext(
                  '''\n\nThe history of Java is very interesting. Java was originally designed for interactive television, but it was too advanced technology for the digital cable television industry at the time. The history of Java starts with the Green Team. Java team members (also known as Green Team), initiated this project to develop a language for digital devices such as set-top boxes, televisions, etc. However, it was best suited for internet programming. Later, Java technology was incorporated by Netscape.

The principles for creating Java programming were "Simple, Robust, Portable, Platform-independent, Secured, High Performance, Multithreaded, Architecture Neutral, Object-Oriented, Interpreted, and Dynamic". Java was developed by James Gosling, who is known as the father of Java, in 1995. James Gosling and his team members started the project in the early '90s.

James Gosling - founder of java
Currently\n''' ),


                Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/j1.jpg",
),
),
),
),

     
_normaltext('''\nJava is used in internet programming, mobile devices, games, e-business solutions, etc. Following are given significant points that describe the history of Java\n

1) James Gosling, Mike Sheridan, and Patrick Naughton initiated the Java language project in June 1991. The small team of sun engineers called Green Team.\n
2) Initially it was designed for small, embedded systems in electronic appliances like set-top boxes.

3) Firstly, it was called "Greentalk" by James Gosling, and the file extension was .gt.

4) After that, it was called Oak and was developed as a part of the Green project.\n\n'''
                ),


                _boldtext("Why java programming named 'Java\n'"),
                _normaltext(
                  '''7) Why had they chose the name Java for Java language? The team gathered to choose a new name. The suggested words were "dynamic", "revolutionary", "Silk", "jolt", "DNA", etc. They wanted something that reflected the essence of the technology: revolutionary, dynamic, lively, cool, unique, and easy to spell, and fun to say.

According to James Gosling, "Java was one of the top choices along with Silk". Since Java was so unique, most of the team members preferred Java than other names.

8) Java is an island in Indonesia where the first coffee was produced (called Java coffee). It is a kind of espresso bean. Java name was chosen by James Gosling while having a cup of coffee nearby his office.9) Notice that Java is just a name, not an acronym.

10) Initially developed by James Gosling at Sun Microsystems (which is now a subsidiary of Oracle Corporation) and released in 1995.

11) In 1995, Time magazine called Java one of the Ten Best Products of 199''')

                
        
   
         



          ]),
        ),
      ),
    );
  }
}












class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
 

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Features"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Java Feature\n"),
                _normaltext(
'''
The primary objective of Java programming language creation was to make it portable, simple and secure programming language. Apart from this, there are also some excellent features which play an important role in the popularity of this language. The features of Java are also known as Java buzzwords.

A list of the most important features of the Java language is given below.\n

1.Simple
2.Object-Oriented
3.Portable
4.Platform independent
5.Secured
6.Robust
7.Architecture neutral
8.Interpreted
9.High Performance
10.Multithreaded
11.Distributed
12.Dynamic
'''
                ),
               


          ]),
        ),
      ),
    );
  }
}








class Mainfunction extends StatefulWidget {
  const Mainfunction({super.key});

  @override
  State<Mainfunction> createState() => _MainfunctionState();
}

class _MainfunctionState extends State<Mainfunction> {
 


Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Function "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Main Functon in  java"),
                _normaltext(
'''The main() is the starting point for JVM to start execution of a Java program. Without the main() method, JVM will not execute the program. The syntax of the main() method is:
public: It is an access specifier. We should use a public keyword before the main() method so that JVM can identify the execution point of the program. If we use private, protected, and default before the main() method, it will not be visible to JVM.

static: You can make a method static by using the keyword static. We should call the main() method without creating an object. Static methods are the method which invokes without creating the objects, so we do not need any object to call the main() method.

void: In Java, every method has the return type. Void keyword acknowledges the compiler that main() method does not return any value.
main(): It is a default signature which is predefined in the JVM. It is called by JVM to execute a program line by line and end the execution after completion of this method. We can also overload the main() method.

String args[]: The main() method also accepts some data from the user. It accepts a group of strings, which is called a string array. It is used to hold the command line arguments in the form of string values.'''                ),          
                
               _CodeArea(
'''class  Demo  
{  
static                  //static block  
{  
System.out.println("Static block");  
}  
public static void main(String args[])  //static method  
{  
System.out.println("Static method");  
}  
}  

'''
    
             ),

   
         SizedBox(height: 20,),

         _CodeArea(
          '''   
          
          Static block
          Static method'''
         )



          ]),
        ),
      ),
    );
  }
}








class Variable extends StatefulWidget {
  const Variable({super.key});

  @override
  State<Variable> createState() => _VariableState();
}

class _VariableState extends State<Variable> {
 


Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Variable "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Variable in C++"),
                _normaltext(
'''A variable is a name of the memory location. It is used to store data. Its value can be changed, and it can be reused many times.It is a way to represent memory location through symbol so that it can be easily identified.\n\nLet's see the syntax to declare a variable:\n\nThe example of declaring the variable is given below\n'''
                ),

                _CodeArea(
                  '''




      void main() {


    int a;
    float b;
    double c;
    char d;

    }
    
    '''

 
                ),
          
          _normaltext('''\nHere, a, b, c are variables. The int, float, char are the data types''')
                
               



          ]),
        ),
      ),
    );
  }
}










class DataType extends StatefulWidget {
  const DataType({super.key});

  @override
  State<DataType> createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
 


Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Type "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Data type in C++"),
                _normaltext(
'''Each variable in C has an associated data type. It specifies the type of data that the variable can store like integer, character, floating, double, etc. Each data type requires different amounts of memory and has some specific operations which can be performed over it. The data type is a collection of data with values having fixed values, meaning as well as its characteristics.\n\nThe data types in C can be classified as follows:
      
      
Primitive Data Types:
Primitive data types are the most basic data types that are used for representing simple values such as integers, float, characters, etc.
      
User Defined Data Types:
The user-defined data types are defined by the user himself.
      
Derived Types:
The data types that are derived from the primitive or built-in datatypes are referred to as Derived Data Types



Different data types also have different ranges up to which they can store numbers. These ranges may vary from compiler to compiler. Below is a list of ranges along with the memory requirement and format specifiers on the 32-bit GCC compiler.'''),
                
              
               

                _CodeArea(
'''  void main() {


    int a;
    float b;
    double c;
    char d;

    }
'''
),
          
      
          _normaltext(
'''\nHere, a, b, c are variables. The int, float, char are the data types'''
          ),
          



    

   
         



          ]),
        ),
      ),
    );
  }
}








class Inputoutput extends StatefulWidget {
  const Inputoutput({super.key});

  @override
  State<Inputoutput> createState() => _InputoutputState();
}

class _InputoutputState extends State<Inputoutput> {


Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input/output "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Input/output\n"),
                _normaltext(
'''C++ comes with libraries that provide us with many ways for performing input and output. In C++ input and output are performed in the form of a sequence of bytes or more commonly known as streams.

\nInput Stream: If the direction of flow of bytes is from the device(for example, Keyboard) to the main memory then this process is called input.
\nOutput Stream: If the direction of flow of bytes is opposite, i.e. from main memory to device( display screen ) then this process is called output.\n\n
Header files available in C++ for Input/Output operations are: 

 
iostream: iostream stands for standard input-output stream. This header file contains definitions of objects like cin, cout, cerr, etc.
\niomanip: iomanip stands for input-output manipulators. The methods declared in these files are used for manipulating streams. This file contains definitions of setw, setprecision, etc.
\nfstream: This header file mainly describes the file stream. This header file is used to handle the data being read from a file as input or data being written into the file as output.
\nbits/stdc++: This header file includes every standard library. In programming contests, using this file is a good idea, when you want to reduce the time wasted in doing chores; especially when your rank is time sensitive. To know more about this header file refer this article.
\nIn C++ after the header files, we often use ‘using namespace std;‘. The reason behind it is that all of the standard library definitions are inside the namespace std. As the library functions are not defined at global scope, so in order to use them we use namespace std. So, that we don’t need to write STD:: at every line (eg. STD::cout etc.).'''
                ),
                
         
                _CodeArea('''
      #include <iostream>
using namespace std;

int main()
{
	int age;

	cout << "Enter your age:";
	cin >> age;
	cout << "Your age is: " << age;

	return 0;
}
'''

),
          _normaltext(
'''\ninput : \n'''
          ),
          
          _CodeArea(
''' 

    18
    
    '''
          ),

         
          _normaltext(
'''\noutput.\n'''
          ),
          _CodeArea(
'''   
     
     Enter your age:
     Your age is: 18
'''
          ),






    

   
         



          ]),
        ),
      ),
    );
  }
}












///////////////////////////////////
/////////////////////////////////////////////////////////////////
/////////////
///
///
///
///
///


class Javaintertopic extends StatefulWidget {
  const Javaintertopic({super.key});

  @override
  State<Javaintertopic> createState() => _JavaintertopicState();
}

class _JavaintertopicState extends State<Javaintertopic> {
 


 Widget customCard(String one, String two,
      Widget Function(BuildContext) classBuilder, BuildContext context) {
    return Card(
      color: Colors.indigoAccent,
      child: InkWell(
        highlightColor: Colors.green,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => classBuilder(context)),
          );
        },
        child: ListTile(
          autofocus: true,
          leading: const Icon(
            Icons.subject,
          ),
          iconColor: Colors.white,
          title: Text(
            one,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            two,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Java intermediantlearning",
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.indigoAccent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Card(
                color: Colors.indigoAccent,
                child: Container(
                    width: 350,
                    child: const ListTile(
                      title: Text(
                        "Java intemediant",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             customCard("Conditional Statement", "Decision making  in java ",
                (context) => Conditionalstatement(), context),
            customCard("Switch Statement", "Multiple case conditional statement",
                (context) => Switchcase(), context),
            customCard("Flow/Loop in java", "For,While,Do while loop",
                (context) => Looping(), context),
            customCard("Flow Control Statement", "Continue,Break",
                (context) => Breakcontinue(), context),
               
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              child: const Card(
                  color: Colors.indigoAccent,
                  child: Center(
                    child: Text(
                      "Knowledge Check",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(onPressed: () {

                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));
              }, 
              child: const Text("Quiz 1")),
              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));}, child: const Text("Quiz 2")),
              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));}, child: const Text("Quiz 3")),
            ]),
          ],
        ),
      ),
    );
  }
}






class Conditionalstatement extends StatefulWidget {
  const Conditionalstatement({super.key});

  @override
  State<Conditionalstatement> createState() => _ConditionalstatementState();
}

class _ConditionalstatementState extends State<Conditionalstatement> {
 


Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Condition in java"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Conditionla statement in java"),
                _normaltext(
'''The conditional statements (also known as decision control structures) such as if, if else, switch, etc. are used for decision-making purposes in java programs.

They are also known as Decision-Making Statements and are used to evaluate one or more conditions and make the decision whether to execute a set of statements or not. These decision-making statements in programming languages decide the direction of the flow of program execution.'''),
                    SizedBox(
              height: 20,
            ),
                _boldtext("Need of Conditional Statements"),
                _normaltext(
'''There come situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arise in programming also where we need to make some decisions and based on these decisions we will execute the next block of code. For example, in java if x occurs then execute y else execute z. There can also be multiple conditions like in java if x occurs then execute p, else if condition y occurs execute q, else execute r. This condition of java else-if is one of the many ways of importing multiple conditions. 



'''
                ),


                _boldtext(

'''Types of Conditional Statements in java'''
                ),
                _normaltext(
'''1.if Statement
2.if-else Statement
3.Nested if Statement
4.if-else-if Ladder

Let’s discuss each of them one by one.




'''
                ),



                _boldtext("1. if in java"),
                _normaltext(
'''The if statement is the most simple decision-making statement. It is used to decide whether a certain statement or block of statements will be executed or not i.e if a certain condition is true then a block of statements is executed otherwise not. 
Syntax in below :'''
                ),




             SizedBox(
              height: 20,
            ),
             _CodeArea(
'''   


    if(condition) {
        // Statements to execute if
        // condition is true
     }'''),



             SizedBox(
              height: 20,
            ),

            _normaltext("A Code for if statement\n"),
             _CodeArea(
'''


// Java program to illustrate If statement

class IfDemo {
	public static void main(String args[])
	{
		int i = 10;

		if (i < 15)
			System.out.println("10 is less than 15");

		System.out.println("Outside if-block");
		// both statements will be printed
	}
}



'''
             ),

           SizedBox(
              height: 60,
            ),


            _boldtext("2. if-else in java"),
            

            _normaltext(
'''he if statement alone tells us that if a condition is true it will execute a block of statements and if the condition is false it won’t. But what if we want to do something else when the condition is false? Here comes the C else statement. We can use the else statement with the if statement to execute a block of code when the condition is false. The if-else statement consists of two blocks, one for false expression and one for true expression.

Syntax of if else in C/C++'''
            ),
             SizedBox(
              height: 20,
            ),

            _CodeArea(
''' 
      
      
      
      if (condition){
           // Executes this block if
           // condition is true
      }else
      {
           // Executes this block if
            // condition is false
       }
       
       
       '''
            ),

              SizedBox(
              height: 20,
            ),

          _normaltext("Example of if-else"),
             SizedBox(
              height: 20,
            ),

          _CodeArea(
'''

    // Java program to illustrate if-else statement

class IfElseDemo {
	public static void main(String args[])
	{
		int i = 20;

		if (i < 15)
			System.out.println("i is smaller than 15");
		else
			System.out.println("i is greater than 15");

		System.out.println("Outside if-else block");
	}
}

}
'''
          ),


           SizedBox(
              height: 60,
            ),



            _boldtext("3. Nested if-else in java"),
            _normaltext(
'''A nested if in java is an if statement that is the target of another if statement. Nested if statements mean an if statement inside another if statement. Yes, both C and C++ allow us to nested if statements within if statements, i.e, we can place an if statement inside another if statement.\n\nSyntax of Nested if-else
'''),
             _CodeArea(
              '''


 if (condition1) 
 {
   // Executes when condition1 is true
   if (condition2) 
   {
      // Executes when condition2 is true
   }
   else
   {
         // Executes when condition2 is false
 } 
 
 '''
             ),

             
           SizedBox(
              height: 20,
            ),

            _normaltext("Example of Nested if-else\n"),
            _CodeArea(
'''//C program to illustrate nested-if statement



	  // Java program to illustrate if-else-if ladder

import java.io.*;

class GFG {
	public static void main(String[] args)
	{
		// initializing expression
		int i = 20;

		// condition 1
		if (i == 10)
	
  
  		System.out.println("i is 10\n");

		// condition 2
		else if (i == 15)
			System.out.println("i is 15\n");

		// condition 3
		else if (i == 20)
			System.out.println("i is 20\n");

		else
			System.out.println("i is not present\n");

		System.out.println("Outside if-else-if");
	}
}


'''),



   SizedBox(height: 60,),
          _boldtext("4. if-else-if Ladder in C"),
          _normaltext(
'''The if else if statements are used when the user has to decide among multiple options. The C if statements are executed from the top down. As soon as one of the conditions controlling the if is true, the statement associated with that if is executed, and the rest of the C else-if ladder is bypassed. If none of the conditions is true, then the final else statement will be executed. if-else-if ladder is similar to the switch statement.

Syntax of if-else-if Ladder'''
          ),


          _CodeArea(
''' 

      if (condition)
            statement;
      else if (condition)
            statement;
      .     
      .

      else
           statement;
       
       
       '''
          ),

          
          _normaltext("\nExample of if-else-if Ladder\n"),
          _CodeArea(
'''
// C program to illustrate nested-if statement
#include <stdio.h>

int main()
{
	int i = 20;

	if (i == 10)
	     cout<<"i is 10";
	else if (i == 15)
		cout<<"i is 15";
	else if (i == 20)
		cout<<"i is 20";
	else
		cout<<"i is not present";
}

// output:i is 20

'''
          ),




         


         



          ]),
        ),
      ),
    );
  }
}


















class Switchcase extends StatefulWidget {
  const Switchcase({super.key});

  @override
  State<Switchcase> createState() => _SwitchcaseState();
}

class _SwitchcaseState extends State<Switchcase> {
  

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch in java"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Switch statement in java"),
                _normaltext(
'''The switch statement allows us to execute a block of code among many alternatives.

The syntax of the switch statement in Java is:\n'''
                ),
                _CodeArea(
'''
     
      switch (expression) {
            case value1:
                  statements;
            case value2:
                  statements;
            ....
            ....
            ....
            default:
                  statements;
       }
       
       
       '''
                ),


                _normaltext("\nExample of switch Statement\n"),
                _CodeArea(
'''

// Java Program to check the size
// using the switch...case statement

class Main {
  public static void main(String[] args) {

    int number = 44;
    String size;

    // switch statement to check size
    switch (number) {

      case 29:
        size = "Small";
        break;

      case 42:
        size = "Medium";
        break;

      // match the value of week
      case 44:
        size = "Large";
        break;

      case 48:
        size = "Extra Large";
        break;
      
      default:
        size = "Unknown";
        break;

    }
    System.out.println("Size: " + size);
  }
}



///Size: Large

'''
                ),
       




         



          ]),
        ),
      ),
    );
  }
}












class Looping extends StatefulWidget {
  const Looping({super.key});

  @override
  State<Looping> createState() => _LooppingState();
}

class _LooppingState extends State<Looping> {
  
 

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loop in java"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Loop in java programming"),
                _normaltext(
'''Loop is used to execute the block of code several times according to the condition given in the loop. It means it executes the same code multiple times so it saves code and also helps to traverse the elements of an array.\n\n'''
                ),
                
                _boldtext("Type of Loop in java programming"),
                _normaltext(
'''Structurely in kava programming there are three type of loop ,whom are structurely diffrent but can use for same perpuse,they are -
       1.For Loop
       2.While Loop
       3.Do while loop\n\n'''
                ),

                _boldtext("1. for Loop"),
                _normaltext(
'''It also executes the code until condition is false. In this three parameters are given that is

   > Initialization
   > Condition
   > Increment/Decrement\n

Syntax\n'''
                ),

                _CodeArea(
'''      

    for(initialization;condition;increment/decrement)
     {
           //code
     }
      
     '''
),
          _normaltext(
'''\nIt is used when number of iterations are known where while is used when number of iterations are not known.\n'''
          ),
          
          _CodeArea(
'''

     /*package whatever //do not write package name here */
// Java program to write a code in for loop from 1 to 10

class GFG {
	public static void main(String[] args)
	{
		for (int i = 1; i <= 10; i++) {
			System.out.println(i);
		}
	}
}

          
          '''
          ),

          _normaltext("\nOutput: \n"),
          _CodeArea(
''' 

  1
2
3
4
5
6
7
8
9
10
  
  '''
          ),







          _boldtext("\n\n2.While Loop : "),
          _normaltext(
'''The while Loop is an entry-controlled loop in java programming language. This loop can be used to iterate a part of code while the given condition remains true.
  
  Statement \n'''
          ),
          _CodeArea(
'''


    while(condition){
      //code
    }
    
    '''
          ),



      _normaltext("\nSample code for while() loop : \n"),
      _CodeArea(
'''
    
    // Java program to illustrate while loop.

class whileLoopDemo {
	public static void main(String args[])
	{
		// initialization expression
		int i = 1;

		// test expression
		while (i < 6) {
			System.out.println("Hello World");

			// update expression
			i++;
		}
	}
}




'''
        
      ),


      _normaltext("\nOutput : \n"),
      _CodeArea(
        '''

            Hello World
            Hello World
            Hello World
            Hello World
            Hello World'''

      ),
          


               
 
        _boldtext("\n\n\n3.do while loop"),
        _normaltext(
'''The do…while in java is a loop statement used to repeat some part of the code till the given condition is fulfilled. It is a form of an exit-controlled or post-tested loop where the test condition is checked after executing the body of the loop. Due to this, the statements in the do…while loop will always be executed at least once no matter what the condition is.

Syntax of do…while Loop in java\n'''

        ),
        _CodeArea(
'''

     do {
 
    // body of do-while loop    
    
    } while(condition)
'''
        ),



        _normaltext("\nSample code for do while loop in Java\n"),
        _CodeArea(
'''
     // Java Program to Illustrate One Time Iteration
// Inside do-while Loop
// When Condition IS Not Satisfied

// Class
class GFG {

	// Main driver method
	public static void main(String[] args)
	{
		// initial counter variable
		int i = 0;

		do {

			// Body of loop that will execute minimum
			// 1 time for sure no matter what
			System.out.println("Geeks");
			i++;
		}

		// Checking condition
		// Note: It is being checked after
		// minimum 1 iteration
		while (i < 3);
	}
}



'''
        ),

        _normaltext("\nOutput : \n"),
        _CodeArea(
'''   


      Geeks
      Geeks
      Geeks'''
        ),


 
  

   
         



          ]),
        ),
      ),
    );
  }
}














class Breakcontinue extends StatefulWidget {
  const Breakcontinue({super.key});

  @override
  State<Breakcontinue> createState() => _BreakcontinueState();
}

class _BreakcontinueState extends State<Breakcontinue> {
  

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Control Flow "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Control Flow in Java programming"),
                _normaltext(
'''In simple,Control of flow defines as terminatead a loop in compile time at any specific state without complete full iteration of a loop in java ,Therea area many flow controller in c,Mostly Contine and Break'''
                ),
                
                _boldtext("\nContinue in java "),
                _normaltext(
'''The continue statement in java language is used to bring the program control to the beginning of the loop. The continue statement skips some lines of code inside the loop and continues with the next iteration. It is mainly used for a condition so that we can skip some code for a particular condition.\n'''
                ),

               

                _CodeArea(
'''
public class GFG {
 
    // Main driver method
    public static void main(String args[])
    {


	// for loop to print 1 to 8
	for (int i = 1; i <= 8; i++) {
		// when i = 4, the iteration will be skipped and for
		// will not be printed
		if (i == 4) {
			continue;
		}
		 cout<<i;
	}




	int i = 0;
	// while loop to print 1 to 8
	while (i < 8) {
		// when i = 4, the iteration will be skipped and for
		// will not be printed
		i++;
		if (i == 4) {
			continue;
		}
		cout<<i;

}
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

    1 2 3 5 6 7 8 
    1 2 3 5 6 7 8 
    
    
    '''
          ),

          _boldtext("\n\nBreak in java : "),
          _normaltext(
'''The break in java is a loop control statement that breaks out of the loop when encountered. It can be used inside loops or switch statements to bring the control out of the block. The break statement can only break out of a single loop at a time.\n'''
          ),
          _CodeArea(
'''public class GFG {
 
    // Main driver method
    public static void main(String args[])
    {

	// using break inside for loop to terminate after 2
	// iteration
	printf("break in for loop");
	for (int i = 1; i < 5; i++) {
		if (i == 3) {
			break;
		}
		else {
			cout<<i;
		}
	}

	// using break inside while loop to terminate after 2
	// iteration
	printf("break in while loop");
	int i = 1;
	while (i < 20) {
		if (i == 3)
			break;
		else
			printf("%d ", i);
		i++;

}
'''
          ),




      _normaltext("\nOutput : \n"),
      _CodeArea(
        '''

            Tbreak in for loop
            1 2 
            break in while loop
            1 2 '''

      ),
          


    

   
         



          ]),
        ),
      ),
    );
  }
}





/////////////////////
///////////////////////////////
//////////////////////////////////////////////////




class javaadvancetopicpage extends StatefulWidget {
  const javaadvancetopicpage({super.key});

  @override
  State<javaadvancetopicpage> createState() => _javaadvancetopicpageState();
}

class _javaadvancetopicpageState extends State<javaadvancetopicpage> {
  


 Widget customCard(String one, String two,
      Widget Function(BuildContext) classBuilder, BuildContext context) {
    return Card(
      color: Colors.indigoAccent,
      child: InkWell(
        highlightColor: Colors.green,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => classBuilder(context)),
          );
        },
        child: ListTile(
          autofocus: true,
          leading: const Icon(
            Icons.subject,
          ),
          iconColor: Colors.white,
          title: Text(
            one,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            two,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Java Advance learning",
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.indigoAccent,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Card(
                color: Colors.indigoAccent,
                child: Container(
                    width: 350,
                    child: const ListTile(
                      title: Text(
                        "   Java Advance",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             customCard("OOP", "Objectect oriented methology ",
                (context) => OOP(), context),
             customCard("Class", "Class concept in Java",
                (context) => OOP1(), context),
            customCard("Object", "Class & Object in Java",
                (context) => Object(), context),
            customCard("Encapsulation", "Data Encuapsulation in Java",
                (context) => Encapsulation(), context),
            customCard("Abstraction ", "Data abstraction in java",
                (context) => abstraction(), context),
            customCard("Polymorphism ", "overrridng and overloadding in java",
                (context) => Polymorphism(), context),
            customCard("Inheritace ", "Inheitance in java",
                (context) => Inheritance(), context),
               
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              child: const Card(
                  color: Colors.indigoAccent,
                  child: Center(
                    child: Text(
                      "Knowledge Check",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(onPressed: () {

                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));
              }, 
              child: const Text("Quiz 1")),
              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));}, child: const Text("Quiz 2")),
              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CbasicQuizpage()));}, child: const Text("Quiz 3")),
            ]),
          ],
        ),
      ),
    );
  }
}






class OOP extends StatefulWidget {
  const OOP({super.key});

  @override
  State<OOP> createState() => _OOPState();
}

class _OOPState extends State<OOP> {
 


Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OOP"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Object oriented programming"),
                _normaltext(
'''Object-Oriented Programming or OOPs refers to languages that use objects in programming, they use objects as a primary source to implement what is to happen in the code. Objects are seen by the viewer or user, performing tasks assigned by you. Object-oriented programming aims to implement real-world entities like inheritance, hiding, polymorphism etc. in programming. The main aim of OOP is to bind together the data and the functions that operate on them so that no other part of the code can access this data except that function. 

     

Let us discuss prerequisites by polishing concepts of method declaration and message passing. Starting off with the method declaration, it consists of six components: 


Access Modifier: Defines the access type of the method i.e. from where it can be accessed in your application. In Java, there are 4 types of access specifiers: 

public: Accessible in all classes in your application.

protected: Accessible within the package in which it is defined and in its subclass(es) (including subclasses declared outside the package).

private: Accessible only within the class in which it is defined.

default (declared/defined without using any modifier): Accessible within the same class and package within which its class is defined.

The return type: The data type of the value returned by the method or void if it does not return a value.

Method Name: The rules for field names apply to method names as well, but the convention is a little different.

Parameter list: Comma-separated list of the input parameters that are defined, preceded by their data type, within the enclosed parentheses. If there are no parameters, you must use empty parentheses ().

Exception list: The exceptions you expect the method to throw. You can specify these exception(s).

Method body: It is the block of code, enclosed between braces, that you need to execute to perform your intended operations.

Message Passing: Objects communicate with one another by sending and receiving information to each other. A message for an object is a request for execution of a procedure and therefore will invoke a function in the receiving object that generates the desired results. Message passing involves specifying the name of the object, the name of the function and the information to be sent.



Now that we have covered the basic prerequisites, we will move on to the 4 pillars of OOPs which are as follows. But, let us start by learning about the different characteristics of an Object-Oriented Programming Language.

OOPS concepts are as follows: 


       1.Class
       2.Object 
       3.Abstraction
       4.Encapsulation
       5.Inheritance
       6.Polymorphism
       7.Compile-tim
     
  '''),
                    SizedBox(
              height: 20,
            ),
         



          ]),
        ),
      ),
    );
  }
}







class OOP1 extends StatefulWidget {
  const OOP1({super.key});

  @override
  State<OOP1> createState() => _OOPS1tate();
}

class _OOPS1tate extends State<OOP1> {
 


Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Java Classes"),
                _normaltext(
'''
A class in Java is a set of objects which shares common characteristics/ behavior and common properties/ attributes. It is a user-defined blueprint or prototype from which objects are created. For example, Student is a class while a particular student named Ravi is an object.


Properties of Java Classes:
      1.Class is not a real-world entity. It is just a template or blueprint or prototype from which objects are created.
      2.Class does not occupy memory.
      3.Class is a group of variables of different data types and a group of methods.
      4.A Class in Java can contain:
      5.Data member
      6.Method
      7.Constructor
      8.Nested Class
      9.Interface




Class Declaration in Java:
          access_modifier class <class_name>
        {  
    data member;  
    method;  
    constructor;
    nested class;
    interface;
       }


     

     
  '''),
                    SizedBox(
              height: 20,
            ),



            _CodeArea(
              '''

    lass Student {
    // data member (also instance variable)
    int id;
    // data member (also instance variable)
    String name;
 
    public static void main(String args[])
    {
        // creating an object of
        // Student
        Student s1 = new Student();
        System.out.println(s1.id);
        System.out.println(s1.name);
    }
}
    
    '''
            )
         



          ]),
        ),
      ),
    );
  }
}















class Object extends StatefulWidget {
  const Object({super.key});

  @override
  State<Object> createState() => _ObjectState();
}

class _ObjectState extends State<Object> {
  

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Object"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Java object"),
                _normaltext(
'''
Java Objects
An object in Java is a basic unit of Object-Oriented Programming and represents real-life entities. Objects are the instances of a class that are created to use the attributes and methods of a class.  A typical Java program creates many objects, which as you know, interact by invoking methods. An object consists of : 

   >>State: It is represented by attributes of an object. It also reflects the properties of an object.
   >>Behavior: It is represented by the methods of an object. It also reflects the response of an object with other objects.
   >>Identity: It gives a unique name to an object and enables one object to interact with other objects.




Example of an object: dog
Objects correspond to things found in the real world. For example, a graphics program may have objects such as “circle”, “square”, and “menu”. An online shopping system might have objects such as “shopping cart”, “customer”, and “product”.  

Declaring Objects (Also called instantiating a class)
When an object of a class is created, the class is said to be instantiated. All the instances share the attributes and the behavior of the class. But the values of those attributes, i.e. the state are unique for each object. A single class may have any number of instances.

Example:
As we declare variables like (type name;). This notifies the compiler that we will use the name to refer to data whose type is type. With a primitive variable, this declaration also reserves the proper amount of memory for the variable. So for reference variables , the type must be strictly a concrete class name. In general, we can’t create objects of an abstract class or an interface.  

          Dog tuffy;


If we declare a reference variable(tuffy) like this, its value will be undetermined(null) until an object is actually created and assigned to it. Simply declaring a reference variable does not create an object.


Initializing a Java object
The new operator instantiates a class by allocating memory for a new object and returning a reference to that memory. The new operator also invokes the class constructor. 




'''               ),


                _CodeArea(
'''
     
     // Class Declaration
 
public class Dog {
    // Instance Variables
    String name;
    String breed;
    int age;
    String color;
 
    // Constructor Declaration of Class
    public Dog(String name, String breed, int age,
               String color)
    {
        this.name = name;
        this.breed = breed;
        this.age = age;
        this.color = color;
    }
 
    // method 1
    public String getName() { return name; }
 
    // method 2
    public String getBreed() { return breed; }
 
    // method 3
    public int getAge() { return age; }
 
    // method 4
    public String getColor() { return color; }
 
    @Override public String toString()
    {
        return ("Hi my name is " + this.getName()
                + ".My breed,age and color are "
                + this.getBreed() + "," + this.getAge()
                + "," + this.getColor());
    }
 
    public static void main(String[] args)
    {
        Dog tuffy
            = new Dog("tuffy", "papillon", 5, "white");
        System.out.println(tuffy.toString());
    }
}  
       '''
                ),


                _normaltext("\noutput\n"),
                _CodeArea(
'''

        Hi my name is tuffy.
        My breed,age and color are papillon,5,white

'''
                ),
       




         



          ]),
        ),
      ),
    );
  }
}












class Encapsulation extends StatefulWidget {
  const Encapsulation({super.key});

  @override
  State<Encapsulation> createState() => _EncapsulationState();
}

class _EncapsulationState extends State<Encapsulation> {
  
 

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Encapsulation "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Encapsulation in java"),
                _normaltext(
'''
Encapsulation is a fundamental concept in object-oriented programming (OOP) that refers to the bundling of data and methods that operate on that data within a single unit, which is called a class in Java. Encapsulation is a way of hiding the implementation details of a class from outside access and only exposing a public interface that can be used to interact with the class.

In Java, encapsulation is achieved by declaring the instance variables of a class as private, which means they can only be accessed within the class. To allow outside access to the instance variables, public methods called getters and setters are defined, which are used to retrieve and modify the values of the instance variables, respectively. By using getters and setters, the class can enforce its own data validation rules and ensure that its internal state remains consistent.


Encapsulation is defined as the wrapping up of data under a single unit. It is the mechanism that binds together code and the data it manipulates. Another way to think about encapsulation is, that it is a protective shield that prevents the data from being accessed by the code outside this shield. 


>>Technically in encapsulation, the variables or data of a class is hidden from any other class and can be accessed only through any member function of its own class in which it is declared.

>>As in encapsulation, the data in a class is hidden from other classes using the data hiding concept which is achieved by making the members or methods of a class private, and the class is exposed to the end-user or the world without providing any details behind implementation using the abstraction concept, so it is also known as a combination of data-hiding and abstraction.
Encapsulation can be achieved by Declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.

>>It is more defined with the setter and getter method.


Here’s an example of encapsulation:
\n\n'''
                ),
                
             

              

                _CodeArea(
'''      
lass Person {
    private String name;
    private int age;
 
    public String getName() { return name; }
 
    public void setName(String name) { this.name = name; }
 
    public int getAge() { return age; }
 
    public void setAge(int age) { this.age = age; }
}
 
public class Main {
    public static void main(String[] args)
    {
        Person person = new Person();
        person.setName("John");
        person.setAge(30);
 
        System.out.println("Name: " + person.getName());
        System.out.println("Age: " + person.getAge());
    }
}

      
     '''
),
          _normaltext(
'''\nIoutput\n'''
          ),
          
          _CodeArea(
'''

   Name: John
   Age: 30
          '''
          ),

          

   
         



          ]),
        ),
      ),
    );
  }
}




























class abstraction extends StatefulWidget {
  const abstraction({super.key});

  @override
  State<abstraction> createState() => _abstractionState();
}

class _abstractionState extends State<abstraction> {
  

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Abstrction "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Abstraction in java"),
                _normaltext(
'''

What is Abstraction in Java?
In Java, abstraction is achieved by interfaces and abstract classes. We can achieve 100% abstraction using interfaces.

Data Abstraction may also be defined as the process of identifying only the required characteristics of an object ignoring the irrelevant details. The properties and behaviors of an object differentiate it from other objects of similar type and also help in classifying/grouping the objects.



Real-Life Example:
Consider a real-life example of a man driving a car. The man only knows that pressing the accelerators will increase the speed of a car or applying brakes will stop the car, but he does not know how on pressing the accelerator the speed is actually increasing, he does not know about the inner mechanism of the car or the implementation of the accelerator, brakes, etc in the car. This is what abstraction is. 




Java Abstract classes and Java Abstract methods :
  1.An abstract class is a class that is declared with an abstract keyword.
  2.An abstract method is a method that is declared without implementation.
  3.An abstract class may or may not have all abstract methods. Some of them can be concrete methods
  4.A method-defined abstract must always be redefined in the subclass, thus making overriding compulsory or making the subclass itself abstract.
  5.Any class that contains one or more abstract methods must also be declared with an abstract keyword.
  6.There can be no object of an abstract class. That is, an abstract class can not be directly instantiated with the new operator.
  7.An abstract class can have parameterized constructors and the default constructor is always present in an abstract class.



Algorithm to implement abstraction in Java
   1.Determine the classes or interfaces that will be part of the abstraction.
   2.Create an abstract class or interface that defines the common behaviors and properties of these classes.
   3.Define abstract methods within the abstract class or interface that do not have any implementation details.
   4.Implement concrete classes that extend the abstract class or implement the interface.
   5.Override the abstract methods in the concrete classes to provide their specific implementations.
   6.Use the concrete classes to implement the program logic.



When to use abstract classes and abstract methods:
There are situations in which we will want to define a superclass that declares the structure of a given abstraction without providing a complete implementation of every method. Sometimes we will want to create a superclass that only defines a generalization form that will be shared by all of its subclasses, leaving it to each subclass to fill in the details.

Consider a classic “shape” example, perhaps used in a computer-aided design system or game simulation. The base type is “shape” and each shape has a color, size, and so on. From this, specific types of shapes are derived(inherited)-circle, square, triangle, and so on — each of which may have additional characteristics and behaviors. For example, certain shapes can be flipped. Some behaviors may be different, such as when you want to calculate the area of a shape. The type hierarchy embodies both the similarities and differences between the shapes.





'''
                ),
              
               

                _CodeArea(
'''
// Java program to illustrate the
// concept of Abstraction
abstract class Shape {
    String color;
 
    // these are abstract methods
    abstract double area();
    public abstract String toString();
 
    // abstract class can have the constructor
    public Shape(String color)
    {
        System.out.println("Shape constructor called");
        this.color = color;
    }
 
    // this is a concrete method
    public String getColor() { return color; }
}
class Circle extends Shape {
    double radius;
 
    public Circle(String color, double radius)
    {
 
        // calling Shape constructor
        super(color);
        System.out.println("Circle constructor called");
        this.radius = radius;
    }
 
    @Override double area()
    {
        return Math.PI * Math.pow(radius, 2);
    }
 
    @Override public String toString()
    {
        return "Circle color is " + super.getColor()
            + "and area is : " + area();
    }
}
class Rectangle extends Shape {
 
    double length;
    double width;
 
    public Rectangle(String color, double length,
                     double width)
    {
        // calling Shape constructor
        super(color);
        System.out.println("Rectangle constructor called");
        this.length = length;
        this.width = width;
    }
 
    @Override double area() { return length * width; }
 
    @Override public String toString()
    {
        return "Rectangle color is " + super.getColor()
            + "and area is : " + area();
    }
}
public class Test {
    public static void main(String[] args)
    {
        Shape s1 = new Circle("Red", 2.2);
        Shape s2 = new Rectangle("Yellow", 2, 4);
 
        System.out.println(s1.toString());
        System.out.println(s2.toString());
    }
}
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

   Shape constructor called
   Circle constructor called
   Shape constructor called
   Rectangle constructor called
   Circle color is Redand area is : 15.205308443374602
   Rectangle color is Yellowand area is : 8.0
    
    
    '''
          ),

             



          ]),
        ),
      ),
    );
  }
}











class Polymorphism extends StatefulWidget {
  const Polymorphism({super.key});

  @override
  State<Polymorphism> createState() => _PolymorphismState();
}

class _PolymorphismState extends State<Polymorphism> {
  

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Polymerphism"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Polymerphism"),
                _normaltext(
'''
Polymorphism is considered one of the important features of Object-Oriented Programming. Polymorphism allows us to perform a single action in different ways. In other words, polymorphism allows you to define one interface and have multiple implementations. The word “poly” means many and “morphs” means forms, So it means many forms.


Types of Java polymorphism:
In Java polymorphism is mainly divided into two types: 
   1.Compile-time Polymorphism
   2.Runtime Polymorphism


Compile-Time Polymorphism
It is also known as static polymorphism. This type of polymorphism is achieved by function overloading or operator overloading. 

Method Overloading
When there are multiple functions with the same name but different parameters then these functions are said to be overloaded. Functions can be overloaded by changes in the number of arguments or/and a change in the type of argu

'''
                ),
                
              

                _CodeArea(
'''
/ Java Program for Method overloading
// By using Different Types of Arguments 
 
// Class 1
// Helper class
class Helper {
 
    // Method with 2 integer parameters
    static int Multiply(int a, int b)
    {
 
        // Returns product of integer numbers
        return a * b;
    }
 
    // Method 2
    // With same name but with 2 double parameters
    static double Multiply(double a, double b)
    {
 
        // Returns product of double numbers
        return a * b;
    }
}
 
// Class 2
// Main class
class GFG {
 
    // Main driver method
    public static void main(String[] args)
    {
 
        // Calling method by passing
        // input as in arguments
        System.out.println(Helper.Multiply(2, 4));
        System.out.println(Helper.Multiply(5.5, 6.3));
    }
}
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

  
    
    8
   34.65
    '''
          ),

         
        

          ]),
        ),
      ),
    );
  }
}











class Inheritance extends StatefulWidget {
  const Inheritance({super.key});

  @override
  State<Inheritance> createState() => _InheritanceState();
}

class _InheritanceState extends State<Inheritance> {
  

Widget _CodeArea(String code) {
    return SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 400, // Minimum width of the container
                minHeight: 150, // Minimum height of the container
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4.0,
                  ),
                ),
                
                child: HighlightView(
                  code,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }




  Widget _boldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                
                    fontWeight: FontWeight.bold));
  }





    Widget _normaltext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400));
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inheritance"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Inheritance in java"),
                _normaltext(
'''

Java, Inheritance is an important pillar of OOP(Object-Oriented Programming). It is the mechanism in Java by which one class is allowed to inherit the features(fields and methods) of another class. In Java, Inheritance means creating new classes based on existing ones. A class that inherits from another class can reuse the methods and fields of that class. In addition, you can add new fields and methods to your current class as well.  

'''              ),
                
                _boldtext("\nWhy Do We Need Java Inheritance? "),
                _normaltext(
'''

  1.Code Reusability: The code written in the Superclass is common to all subclasses. Child classes can directly use the parent class code.

  2.Method Overriding: Method Overriding is achievable only through Inheritance. It is one of the ways by which Java achieves Run Time Polymorphism.
 
  3.Abstraction: The concept of abstract where we do not have to provide all details is achieved through inheritance. Abstraction only shows the functionality to the user.

\n'''
                ),




            _boldtext("Important Terminologies Used in Java Inheritance\n"),

             _normaltext('''
             
             1.Class: Class is a set of objects which shares common characteristics/ behavior and common properties/ attributes. Class is not a real-world entity. It is just a template or blueprint or prototype from which objects are created.

             S2.uper Class/Parent Class: The class whose features are inherited is known as a superclass(or a base class or a parent class).

             3.Sub Class/Child Class: The class that inherits the other class is known as a subclass(or a derived class, extended class, or child class). The subclass can add its own fields and methods in addition to the superclass fields and methods.

             4.Reusability: Inheritance supports the concept of “reusability”, i.e. when we want to create a new class and there is already a class that includes some of the code that we want, we can derive our new class from the existing class. By doing this, we are reusing the fields and methods of the existing class.
             
             '''),



             _boldtext("How to Use Inheritance in Java?"),
             _normaltext('''The extends keyword is used for inheritance in Java. Using the extends keyword indicates you are derived from an existing class. In other words, “extends” refers to increased functionality.



   Syntax : 
           
           class derived-class extends base-class  
                {  
                       //methods and fields  
                }  




'''),

               

                _CodeArea(
'''


// Java program to illustrate the
// concept of inheritance
  
// base class
class Bicycle {
    // the Bicycle class has two fields
    public int gear;
    public int speed;
  
    // the Bicycle class has one constructor
    public Bicycle(int gear, int speed)
    {
        this.gear = gear;
        this.speed = speed;
    }
  
    // the Bicycle class has three methods
    public void applyBrake(int decrement)
    {
        speed -= decrement;
    }
  
    public void speedUp(int increment)
    {
        speed += increment;
    }
  
    // toString() method to print info of Bicycle
    public String toString()
    {
        return ("No of gears are " + gear + " "
                + "speed of bicycle is " + speed);
    }
}
  
// derived class
class MountainBike extends Bicycle {
  
    // the MountainBike subclass adds one more field
    public int seatHeight;
  
    // the MountainBike subclass has one constructor
    public MountainBike(int gear, int speed,
                        int startHeight)
    {
        // invoking base-class(Bicycle) constructor
        super(gear, speed);
        seatHeight = startHeight;
    }
  
    // the MountainBike subclass adds one more method
    public void setHeight(int newValue)
    {
        seatHeight = newValue;
    }
  
    // overriding toString() method
    // of Bicycle to print more info
    @Override public String toString()
    {
        return (super.toString() + "seat height is "
                + seatHeight);
    }
}
  
// driver class
public class Test {
    public static void main(String args[])
    {
  
        MountainBike mb = new MountainBike(3, 100, 25);
        System.out.println(mb.toString());
    }
}



'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

     No of gears are 3
     speed of bicycle is 100
     seat height is 25


    
    
    '''
          ),

         


          ]),
        ),
      ),
    );
  }
}
























