import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cquiz.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';


class Cppbasictopinpage extends StatefulWidget {
  const Cppbasictopinpage({super.key});

  @override
  State<Cppbasictopinpage> createState() => _CppbasictopinpageState();
}

class _CppbasictopinpageState extends State<Cppbasictopinpage> {
 
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
          "C++ Basic learning",
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
                        "   C++ Programmig Basic",
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
            customCard("Introduction", "History of C++ programming",
                (context) => const Introduction(), context),
            customCard("Features", "Features of C++ programming",
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
        title: const Text("Introduction of C++ "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/images.png",
),
),
),
),




                _boldtext("History of C++ programming\n"),
                _normaltext(
'''The C++ programming language has a history going back to 1979, when Bjarne Stroustrup was doing work for his Ph.D. thesis. One of the languages Stroustrup had the opportunity to work with was a language called Simula, which as the name implies is a language primarily designed for simulations. The Simula 67 language - which was the variant that Stroustrup worked with - is regarded as the first language to support the object-oriented programming paradigm. Stroustrup found that this paradigm was very useful for software development, however the Simula language was far too slow for practical use.


 '''),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/mccc.jpeg",
),
),
),
),




_normaltext('''Shortly thereafter, he began work on "C with Classes", which as the name implies was meant to be a superset of the C language. His goal was to add object-oriented programming into the C language, which was and still is a language well-respected for its portability without sacrificing speed or low-level functionality. His language included classes, basic inheritance, inlining, default function arguments, and strong type checking in addition to all the features of the C language.

The first C with Classes compiler was called Cfront, which was derived from a C compiler called CPre. It was a program designed to translate C with Classes code to ordinary C. A rather interesting point worth noting is that Cfront was written mostly in C with Classes, making it a self-hosting compiler (a compiler that can compile itself). Cfront would later be abandoned in 1993 after it became difficult to integrate new features into it, namely C++ exceptions. Nonetheless, Cfront made a huge impact on the implementations of future compilers and on the Unix operating system.
.In 1983, the name of the language was changed from C with Classes to C++. The ++ operator in the C language is an operator for incrementing a variable, which gives some insight into how Stroustrup regarded the language. Many new features were added around this time, the most notable of which are virtual functions, function overloading, references with the & symbol, the const keyword, and single-line comments using two forward slashes (which is a feature taken from the language BCPL).

'''
                ),




Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/641d46927d5aa_history_of_c.jpg",
),
),
),
),





            _normaltext('''In 1985, Stroustrup's reference to the language entitled The C++ Programming Language was published. That same year, C++ was implemented as a commercial product. The language was not officially standardized yet, making the book a very important reference. The language was updated again in 1989 to include protected and static members, as well as inheritance from several classes.

In 1990, The Annotated C++ Reference Manual was released.. same year, Borland's Turbo C++ compiler would be released as a commercial product. Turbo C++ added a plethora of additional libraries which would have a considerable impact on C++'s development. Although Turbo C++'s last stable release was in 2006, the compiler is still widely used.

In 1998, the C++ standards committee published the first international standard for C++ ISO/IEC 14882:1998, which would be informally known as C++98. The Annotated C++ Reference Manual was said to be a large influence in the development of the standard. The Standard Template Library, which began its conceptual development in 1979, was also included. In 2003, the committee responded to multiple problems that were reported with their 1998 standard, and revised it accordingly. The changed language was dubbed C++03.

In 2005, the C++ standards committee released a technical report (dubbed TR1) detailing various features they were planning to add to the latest C++ standard. The new standard was informally dubbed C++0x as it was expected to be released sometime before the end of the first decade. Ironically, however, the new standard would not be released until mid-2011. Several technical reports were released up until then, and some compilers began adding experimental support for the new features.

In mid-2011, the new C++ standard (dubbed C++11) was finished. The Boost library project made a considerable impact on the new standard, and some of the new modules were derived directly from the corresponding Boost libraries. Some of the new features included regular expression support (details on regular expressions may be found here), a comprehensive randomization library, a new C++ time library, atomics support, a standard threading library (which up until 2011 both C and C++ were lacking), a new for loop syntax providing functionality similar to foreach loops in certain other languages, the auto keyword, new container classes, better support for unions and array-initialization lists, and variadic templates.'''),

                
        
   
         



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

                _boldtext("C++ Feature\n"),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/featuresc.jpg",
),
),
),
),










                _normaltext(
'''
C++ is a general-purpose programming language that was developed as an enhancement of the C language to include an object-oriented paradigm. It is an imperative and compiled language. C++ has a number of features, including:


1.Object-Oriented Programming
2.Machine Independent
3.Simple
4.High-Level Language
5.Popular
6.Case-sensitive
7.Compiler Based
8.Dynamic Memory Allocation
9.Memory Management
10.Multi-threading'''
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

                _boldtext("Main Functon in  C++"),
                _normaltext(
'''The main function is a special function. Every C++ program must contain a function named main. It serves as the entry point for the program. The computer will start running the code from the beginning of the main function. '''
                ),
                
               _CodeArea(
'''#include <iostream>
using namespace std;
void printMin(int arr[5]);
int main()
{
	int ar[5] = { 30, 10, 20, 40, 50 };
	printMin(ar); // passing array to function
}
void printMin(int arr[5])
{
	int min = arr[0];
	for (int i = 0; i < 5; i++) {
		if (min > arr[i]) {
			min = arr[i];
		}
	}
	cout << "Minimum element is: " << min;
}


'''
    
             ),

   
         SizedBox(height: 20,),

         _CodeArea(
          '''   
          
          Minimum element is: 10'''
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











//////////////////////////
///////// intemediat
///...........
///
///

class Cppintertopicpage extends StatefulWidget {
  const Cppintertopicpage({super.key});

  @override
  State<Cppintertopicpage> createState() => _CppintertopicpageState();
}

class _CppintertopicpageState extends State<Cppintertopicpage> {
  


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
          "C++ intermediantlearning",
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
                        "   C++ intemediant",
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
             customCard("Conditional Statement", "Decision making  in C++ ",
                (context) => Conditionalstatement(), context),
            customCard("Switch Statement", "Multiple case conditional statement",
                (context) => Switchcase(), context),
            customCard("Flow/Loop in C++", "For,While,Do while loop",
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
        title: const Text("Condition in C++"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Conditionla statement in C++"),
                _normaltext(
'''The conditional statements (also known as decision control structures) such as if, if else, switch, etc. are used for decision-making purposes in C/C++ programs.

They are also known as Decision-Making Statements and are used to evaluate one or more conditions and make the decision whether to execute a set of statements or not. These decision-making statements in programming languages decide the direction of the flow of program execution.'''),
                    SizedBox(
              height: 20,
            ),
                _boldtext("Need of Conditional Statements"),
                _normaltext(
'''There come situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arise in programming also where we need to make some decisions and based on these decisions we will execute the next block of code. For example, in C++ if x occurs then execute y else execute z. There can also be multiple conditions like in C++ if x occurs then execute p, else if condition y occurs execute q, else execute r. This condition of C else-if is one of the many ways of importing multiple conditions. 



'''
                ),


                _boldtext(

'''Types of Conditional Statements in C/C++'''
                ),
                _normaltext(
'''1.if Statement
2.if-else Statement
3.Nested if Statement
4.if-else-if Ladder

Let’s discuss each of them one by one.




'''
                ),



                _boldtext("1. if in C++"),
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


#include <stdio.h>

int main()
{
	int i = 10;

	if (i > 15) {
		 cout<<"10 is greater than 15";
	}

	cout<<"I am Not in if";
}
'''
             ),

           SizedBox(
              height: 60,
            ),


            _boldtext("2. if-else in C"),
            

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
'''// C program to illustrate If statement
#include <stdio.h>

int main()
{
	int i = 20;

	if (i < 15) {

		 cout<<"i is smaller than 15";
	}
	else {

		cout<<"i is greater than 15";
	}

	return 0;



   //output:i is greater than 15
}
'''
          ),


           SizedBox(
              height: 60,
            ),



            _boldtext("3. Nested if-else in C"),
            _normaltext(
'''A nested if in C++ is an if statement that is the target of another if statement. Nested if statements mean an if statement inside another if statement. Yes, both C and C++ allow us to nested if statements within if statements, i.e, we can place an if statement inside another if statement.\n\nSyntax of Nested if-else
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

#include <stdio.h>

int main()
{
	int i = 10;

	if (i == 10) {
		// First if statement
		if (i < 15)
			printf("i is smaller than 15");

		// Nested - if statement
		// Will only be executed if statement above
		// is true
		if (i < 12)
			cout<<"i is smaller than 12 too"cout<<;
		else
			cout<<"i is greater than 15";
	}

	return 0;
}

      //output: i is smaller than 15
      //i is smaller than 12 too

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
        title: const Text("Switch in C++"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Switch statement in C++"),
                _normaltext(
'''The switch statement in C++ is an alternate to if-else-if ladder statement which allows us to execute multiple operations for the different possibles values of a single variable called switch variable. Here, We can define various statements in the multiple cases for the different values of a single variable.

The syntax of switch statement in c language is given below:\n'''
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

// C Program to illustrate the use of switch statement
#include <stdio.h>

int main()
{
	// variable to be used in switch statement
	int var = 2;

	// declaring switch cases
	switch (var) {
	case 1:
		cout<<"Case 1 is executed";
		break;
	case 2:
		cout<<"Case 2 is executed";
		break;
	default:
		cout<<"Default Case is executed";
		break;
	}

	return 0;
}


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
        title: const Text("Loop in C++"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Loop in C++ programming"),
                _normaltext(
'''Loop is used to execute the block of code several times according to the condition given in the loop. It means it executes the same code multiple times so it saves code and also helps to traverse the elements of an array.\n\n'''
                ),
                
                _boldtext("Type of Loop in C++ programming"),
                _normaltext(
'''Structurely in C programming there are three type of loop ,whom are structurely diffrent but can use for same perpuse,they are -
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

     #include<stdio.h>
     #include<conio.h>
     void main()
     {
        int i;
        for( i = 20; i < 25; i++) {
            cout<<i<<;
           }
           getch();
     }
          
          '''
          ),

          _normaltext("\nOutput: \n"),
          _CodeArea(
''' 

  20
  21
  22
  23
  24
  
  '''
          ),







          _boldtext("\n\n2.While Loop : "),
          _normaltext(
'''The while Loop is an entry-controlled loop in C programming language. This loop can be used to iterate a part of code while the given condition remains true.
  
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
    
    // C program to demonstrate while loop
#include <stdio.h>

int main()
{
	// Initialization of loop variable
	int i = 0;

	// setting test expression as (i < 5), means the loop
	// will execute till i is less than 5
	while (i < 5) {

		// loop statements
		printf("This is while() loop");

		// updating the loop variable
		i++;
	}
	return 0;
}
'''
        
      ),


      _normaltext("\nOutput : \n"),
      _CodeArea(
        '''

            This is While() loop
            This is While() loop
            This is While() loop
            This is While() loop
            This is While() loop'''

      ),
          


               
 
        _boldtext("\n\n\n3.do while loop"),
        _normaltext(
'''The do…while in C is a loop statement used to repeat some part of the code till the given condition is fulfilled. It is a form of an exit-controlled or post-tested loop where the test condition is checked after executing the body of the loop. Due to this, the statements in the do…while loop will always be executed at least once no matter what the condition is.

Syntax of do…while Loop in C\n'''

        ),
        _CodeArea(
'''

     do {
 
    // body of do-while loop    
    
    } 
'''
        ),



        _normaltext("\nSample code for do while loop in c\n"),
        _CodeArea(
'''
     // C Program to demonstrate the use of do...while loop
#include <stdio.h>

int main()
{

	// loop variable declaration and initialization
	int i = 0;
	// do while loop
	do {
		printf("Geeks");
		i++;
	} while (i < 3);

	return 0;
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

                _boldtext("Control Flow in C++ programming"),
                _normaltext(
'''In simple,Control of flow defines as terminatead a loop in compile time at any specific state without complete full iteration of a loop in c,Therea area many flow controller in c,Mostly Contine and Break'''
                ),
                
                _boldtext("\nContinue in C "),
                _normaltext(
'''The continue statement in C++ language is used to bring the program control to the beginning of the loop. The continue statement skips some lines of code inside the loop and continues with the next iteration. It is mainly used for a condition so that we can skip some code for a particular condition.\n'''
                ),

               

                _CodeArea(
'''// C program to explain the use
// of continue statement with for loop

#include <stdio.h>

int main()
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
	return 0;
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

          _boldtext("\n\nBreak in C++ : "),
          _normaltext(
'''The break in C++ is a loop control statement that breaks out of the loop when encountered. It can be used inside loops or switch statements to bring the control out of the block. The break statement can only break out of a single loop at a time.\n'''
          ),
          _CodeArea(
'''// C++ Program to dem@override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}onstrate break statement with for loop
#include <stdio.h>

int main()
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
	return 0;
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


















////////////////////////////////
/////////////////////////////////////
/////////////////////
///////////////////////////////////////////////////////////////////

class Cppadvancetopicpage extends StatefulWidget {
  const Cppadvancetopicpage({super.key});

  @override
  State<Cppadvancetopicpage> createState() => _CppadvancetopicpageState();
}

class _CppadvancetopicpageState extends State<Cppadvancetopicpage> {
  


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
          "C++ Advance learning",
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
                        "   C++ Advance",
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
            customCard("Class & object", "Class & object in C++",
                (context) => Object(), context),
            customCard("Encapsulation", "Data Encuapsulation in C++",
                (context) => Encapsulation(), context),
            customCard("Abstraction ", "Data abstraction in C++",
                (context) => abstraction(), context),
            customCard("Polymorphism ", "overrridng and overloadding in C++",
                (context) => Polymorphism(), context),
            customCard("Inheritace ", "Inheitance in C++",
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

                _boldtext("Object oriented programming\n\n"),



Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/OOPs-Concepts.jpg",
),
),
),
),


                _normaltext(
'''\n\nObject-oriented programming – As the name suggests uses objects in programming. Object-oriented programming aims to implement real-world entities like inheritance, hiding, polymorphism, etc. in programming. The main aim of OOP is to bind together the data and the functions that operate on them so that no other part of the code can access this data except that function.

There are some basic concepts that act as the building blocks of OOPs i.e.

     >Class
     >Objects
     >Encapsulation
     >Abstraction
     >Polymorphism
     >Inheritance'''),
                    SizedBox(
              height: 20,
            ),
         



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
        title: const Text("Class & object"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Class & object"),
                _normaltext(
'''Class in C++ is the building block that leads to Object-Oriented programming. It is a user-defined data type, which holds its own data members and member functions, which can be accessed and used by creating an instance of that class. A C++ class is like a blueprint for an object. For Example: Consider the Class of Cars. There may be many cars with different names and brands but all of them will share some common properties like all of them will have 4 wheels, Speed Limit, Mileage range, etc. So here, Car is the class, and wheels, speed limits, and mileage are their properties.

  >>>A Class is a user-defined data type that has data members and member functions.

  >>>Data members are the data variables and member functions are the functions used to manipulate these variables together, these data members and member functions define the properties and behavior of the objects in a Class.

  >>>In the above example of class Car, the data member will be speed limit, mileage, etc, and member functions can be applying brakes, increasing speed, etc.


An Object is an instance of a Class. When a class is defined, no memory is allocated but when it is instantiated (i.e. an object is created) memory is allocated.



Defining Class and Declaring Objects
A class is defined in C++ using the keyword class followed by the name of the class. The body of the class is defined inside the curly brackets and terminated by a semicolon at the end.


Declaring Objects
When a class is defined, only the specification for the object is defined; no memory or storage is allocated. To use the data and access functions defined in the class, you need to create objects.

        Syntax : 
            ClassName ObjectName;\n\n
            
            
            
Accessing data members and member functions:-
The data members and member functions of the class can be accessed using the dot(‘.’) operator with the object. For example, if the name of the object is obj and you want to access the member function with the name printName() then you will have to write obj.printName().\n\n
  
Accessing Data Members:-
The public data members are also accessed in the same way given however the private data members are not allowed to be accessed directly by the object. Accessing a data member depends solely on the access control of that data member. This access control is given by Access modifiers in C++. There are three access modifiers: public, private, and protected.'''
                ),
                _CodeArea(
'''
     
      / C++ program to demonstrate accessing of data members
#include <bits/stdc++.h>
using namespace std;
class Geeks {
    // Access specifier
public:
    // Data  Members
    string geekname;
    // Member Functions()
    void printname() { cout << "Geekname is:" << geekname; }
};
int main()
{
    // Declare an object of class geeks
    Geeks obj1;
    // accessing data member
    obj1.geekname = "Abhi";
    // accessing member function
    obj1.printname();
    return 0;
}
       
       
       '''
                ),


                _normaltext("\noutput\n"),
                _CodeArea(
'''

        Geekname is:Abhi

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

                _boldtext("Encapsulation in C++"),
                _normaltext(
'''Encapsulation in C++ is defined as the wrapping up of data and information in a single unit. In Object Oriented Programming, Encapsulation is defined as binding together the data and the functions that manipulate them.

Consider a real-life example of encapsulation, in a company, there are different sections like the accounts section, finance section, sales section, etc. Now,

The finance section handles all the financial transactions and keeps records of all the data related to finance.
Similarly, the sales section handles all the sales-related activities and keeps records of all the sales.



Now there may arise a situation when for some reason an official from the finance section needs all the data about sales in a particular month.


In this case, he is not allowed to  is what Encapsulation is. Here the data of the sales section and the employees that can manipulate them are wrapped under a single name “sales section”. 

Two Important  property of Encapsulation 

     1.Data Protection: Encapsulation protects the internal state of an object by keeping its data members private. Access to and modification of these data members is restricted to the class’s public methods, ensuring controlled and secure data manipulation.
     2.Information Hiding: Encapsulation hides the internal implementation details of a class from external code. Only the public interface of the class is accessible, providing abstraction and simplifying the usage of the class while allowing the internal implementation to be modified without impacting external code.

For example if we give input , and output should be half of inputtly access the data of the sales section. He will first have to contact some other officer in the sales section and then request him to give the particular data.




\n\n'''
                ),
                
             

              

                _CodeArea(
'''      

    #include <iostream>
#include <string>
 
using namespace std;
 
class Person {
  private:
    string name;
    int age;
  public:
    Person(string name, int age) {
      this->name = name;
      this->age = age;
    }
    void setName(string name) {
      this->name = name;
    }
    string getName() {
      return name;
    }
    void setAge(int age) {
      this->age = age;
    }
    int getAge() {
      return age;
    }
};
 
int main() {
  Person person("John Doe", 30);
 
  cout << "Name: " << person.getName() << endl;
  cout << "Age: " << person.getAge() << endl;
 
  person.setName("Jane Doe");
  person.setAge(32);
 
  cout << "Name: " << person.getName() << endl;
  cout << "Age: " << person.getAge() << endl;
 
  return 0;
}
      
     '''
),
          _normaltext(
'''\nIoutput\n'''
          ),
          
          _CodeArea(
'''

    Name: John Doe
    Age: 30
    Name: Jane Doe
    Age: 32
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

                _boldtext("Abstraction in C++"),
                _normaltext(
'''Data abstraction is one of the most essential and important features of object-oriented programming in C++. Abstraction means displaying only essential information and hiding the details. Data abstraction refers to providing only essential information about the data to the outside world, hiding the background details or implementation. 

Consider a real-life example of a man driving a car. The man only knows that pressing the accelerator will increase the speed of the car or applying brakes will stop the car but he does not know how on pressing the accelerator the speed is actually increasing, he does not know about the inner mechanism of the car or the implementation of the accelerator, brakes, etc in the car. This is what abstraction is.



Types of Abstraction:
     1.Data abstraction – This type only shows the required information about the data and hides the unnecessary data.
     2.Control Abstraction – This type only shows the required information about the implementation and hides unnecessary information.





'''
                ),
              
               

                _CodeArea(
'''// C++ Program to Demonstrate the
// working of Abstraction
#include <iostream>
using namespace std;
 
class implementAbstraction {
private:
    int a, b;
 
public:
    // method to set values of
    // private members
    void set(int x, int y)
    {
        a = x;
        b = y;
    }
 
    void display()
    {
        cout << "a = " << a << endl;
        cout << "b = " << b << endl;
    }
};
 
int main()
{
    implementAbstraction obj;
    obj.set(10, 20);
    obj.display();
    return 0;
}
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

    a = 10
    b = 20
    
    
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
'''The word “polymorphism” means having many forms. In simple words, we can define polymorphism as the ability of a message to be displayed in more than one form. A real-life example of polymorphism is a person who at the same time can have different characteristics. A man at the same time is a father, a husband, and an employee. So the same person exhibits different behavior in different situations. This is called polymorphism. Polymorphism is considered one of the important features of Object-Oriented Programming.


Types of Polymorphism
    1,Compile-time Polymorphism
    2.Runtime Polymorphism


1. Compile-Time Polymorphism
This type of polymorphism is achieved by function overloading or operator overloading.

A. Function Overloading
When there are multiple functions with the same name but different parameters, then the functions are said to be overloaded, hence this is known as Function Overloading. Functions can be overloaded by changing the number of arguments or/and changing the type of arguments. In simple terms, it is a feature of object-oriented programming providing many functions that have the same name but distinct parameters when numerous tasks are listed under one function name. There are certain Rules of Function Overloading that should be followed while overloading a function.

Below is the C++ program to show function overloading or compile-time polymorphism:




'''
                ),
                
              

                _CodeArea(
'''
#include <bits/stdc++.h>
 
using namespace std;
class Geeks {
public:
    // Function with 1 int parameter
    void func(int x)
    {
        cout << "value of x is " << x << endl;
    }
 
    // Function with same name but
    // 1 double parameter
    void func(double x)
    {
        cout << "value of x is " << x << endl;
    }
 
    // Function with same name and
    // 2 int parameters
    void func(int x, int y)
    {
        cout << "value of x and y is " << x << ", " << y
             << endl;
    }
};
 
// Driver code
int main()
{
    Geeks obj1;
 
    // Function being called depends
    // on the parameters passed
    // func() is called with int value
    obj1.func(7);
 
    // func() is called with double value
    obj1.func(9.132);
 
    // func() is called with 2 int values
    obj1.func(85, 64);
    return 0;
}
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

   value of x is 7
value of x is 9.132
value of x and y is 85, 64
    
    
    '''
          ),

         
          _normaltext(
'''\n\n

B. Operator Overloading
C++ has the ability to provide the operators with a special meaning for a data type, this ability is known as operator overloading. For example, we can make use of the addition operator (+) for string class to concatenate two strings. We know that the task of this operator is to add two operands. So a single operator ‘+’, when placed between integer operands, adds them and when placed between string operands, concatenates them. 

Below is the C++ program to demonstrate operator overloading:
\n'''
          ),
          _CodeArea(
'''/ C++ program to demonstrate
// Operator Overloading or
// Compile-Time Polymorphism
#include <iostream>
using namespace std;
 
class Complex {
private:
    int real, imag;
 
public:
    Complex(int r = 0, int i = 0)
    {
        real = r;
        imag = i;
    }
 
    // This is automatically called
    // when '+' is used with between
    // two Complex objects
    Complex operator+(Complex const& obj)
    {
        Complex res;
        res.real = real + obj.real;
        res.imag = imag + obj.imag;
        return res;
    }
    void print() { cout << real << " + i" << imag << endl; }
};
 
// Driver code
int main()
{
    Complex c1(10, 5), c2(2, 4);
 
    // An example call to "operator+"
    Complex c3 = c1 + c2;
    c3.print();
}
'''
          ),




      _normaltext("\nOutput : \n"),
      _CodeArea(
        '''

            12 + i9
            '''

      ),
          


    
       SizedBox(height: 30,),


   
        _boldtext("2. Runtime Polymorphism"),
        _normaltext(
          '''
This type of polymorphism is achieved by Function Overriding. Late binding and dynamic polymorphism are other names for runtime polymorphism. The function call is resolved at runtime in runtime polymorphism. In contrast, with compile time polymorphism, the compiler determines which function call to bind to the object after deducing it at runtime.


A. Function Overriding
Function Overriding occurs when a derived class has a definition for one of the member functions of the base class. That base function is said to be overridden.


Runtime Polymorphism with Data Members
Runtime Polymorphism can be achieved by data members in C++. Let’s see an example where we are accessing the field by reference variable which refers to the instance of the derived class.



'''
        ),


        _CodeArea('''

// C++ program for function overriding with data members
#include <bits/stdc++.h>
using namespace std;
 
//  base class declaration.
class Animal {
public:
    string color = "Black";
};
 
// inheriting Animal class.
class Dog : public Animal {
public:
    string color = "Grey";
};
 
// Driver code
int main(void)
{
    Animal d = Dog(); // accessing the field by reference
                      // variable which refers to derived
    cout << d.color;
}


'''),

_normaltext("\noutput"),
_CodeArea('''

       Black

''')



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
        title: const Text("Inheritance "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Inheritance in C++"),
                _normaltext(
'''
The capability of a class to derive properties and characteristics from another class is called Inheritance. Inheritance is one of the most important features of Object-Oriented Programming. 

Inheritance is a feature or a process in which, new classes are created from the existing classes. The new class created is called “derived class” or “child class” and the existing class is known as the “base class” or “parent class”. The derived class now is said to be inherited from the base class.

When we say derived class inherits the base class, it means, the derived class inherits all the properties of the base class, without changing the properties of base class and may add new features to its own. These new features in the derived class will not affect the base class. The derived class is the specialized class for the base class.

Sub Class: The class that inherits properties from another class is called Subclass or Derived Class. 
Super Class: The class whose properties are inherited by a subclass is called Base Class or Superclass. 



Why and when to use inheritance?
Consider a group of vehicles. You need to create classes for Bus, Car, and Truck. The methods fuelAmount(), capacity(), applyBrakes() will be the same for all three classes. If we create these classes avoiding inheritance then we have to write all of these functions in each of the three classes as shown below figure: '''
                ),
                
                _boldtext("\nImplementing inheritance in C++: "),
                _normaltext(
'''

For creating a sub-class that is inherited from the base class we have to follow the below syntax. 

Derived Classes: A Derived class is defined as the class derived from the base class.


Syntax: 

class  <derived_class_name> : <access-specifier> <base_class_name>
{
        //body
}



Where
class      — keyword to create a new class
derived_class_name   — name of the new class, which will inherit the base class
access-specifier  — either of private, public or protected. If neither is specified, PRIVATE is taken as default
base-class-name  — name of the base class
Note: A derived class doesn’t inherit access to private data members. However, it does inherit a full parent object, which contains any private members which that class declares.

Example:
1. class ABC : private XYZ              //private derivation
            {                }
2. class ABC : public XYZ              //public derivation
            {               }
3. class ABC : protected XYZ              //protected derivation
            {              }
4. class ABC: XYZ                            //private derivation by default
{            }


\n'''
                ),

               

                _CodeArea(
'''
/ Example: define member function without argument within the class
  
#include<iostream>
using namespace std;
  
class Person
{
    int id;
    char name[100];
    
    public:
        void set_p()
        {
            cout<<"Enter the Id:";
            cin>>id;
            fflush(stdin);
            cout<<"Enter the Name:";
            cin.get(name,100);
        }
    
        void display_p()
        {
            cout<<endl<<id<<"\t"<<name<<"\t";
        }
};
  
class Student: private Person
{
    char course[50];
    int fee;
      
    public:
    void set_s()
        {
            set_p();
            cout<<"Enter the Course Name:";
            fflush(stdin);
            cin.getline(course,50);
            cout<<"Enter the Course Fee:";
            cin>>fee;
        }
          
        void display_s()
        {
            display_p();
            cout<<course<<"\t"<<fee<<endl;
        }
};
  
main()
{
    Student s;
    s.set_s();
    s.display_s();
    return 0;
}

'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

   Enter the Id: 101
Enter the Name: Dev
Enter the Course Name: GCS
Enter the Course Fee:70000

101      Dev     GCS    70000

    
    
    '''
          ),

         


          ]),
        ),
      ),
    );
  }
}




















