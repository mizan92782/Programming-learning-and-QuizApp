// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cquiz.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';




class Cbasictopicpage extends StatefulWidget {
  const Cbasictopicpage({super.key});

  @override
  State<Cbasictopicpage> createState() => _CbasictopicpageState();
}

class _CbasictopicpageState extends State<Cbasictopicpage> {

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
          "C Basic learning",
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
                        "   C Programmig Basic",
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
            customCard("Introduction", "History of C programming",
                (context) => Introduction_c(), context),
            customCard("Features", "Features of C programming",
                (context) => Features(), context),
            customCard("Main Function", "Main function of C programming",
                (context) => MainFunction(), context),
            customCard("Variable", "Varaible that contain value",
                (context) => Variable(), context),
            customCard("Data Type", "Int,Char,Double,Float etc",
                (context) => Datatype(), context),
            customCard("Input/Output", "standard input/output(stdio)",
                (context) => inputOutput(), context),
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



class Introduction_c extends StatefulWidget {
  const Introduction_c({super.key});

  @override
  State<Introduction_c> createState() => _Introduction_cState();
}

class _Introduction_cState extends State<Introduction_c> {
  
  

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


  Widget _semiboldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Color.fromARGB(255, 15, 173, 9),
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
        title: const Text("Intorduction of C "),
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
"assets/images/download.png",
),
),
),
),





                _boldtext("What is C Programming Langauge?\n"),
                _normaltext(
'''
C is a general-purpose programming language that is extremely popular, simple, and flexible to use. It is a structured programming language that is machine-independent and extensively used to write various applications, Operating Systems like Windows, and many other complex programs like Oracle database, Git, Python interpreter, and more.

It is said that ‘C’ is a god’s programming language. One can say, C is a base for the programming. If you know ‘C,’ you can easily grasp the knowledge of the other programming languages that uses the concept of ‘C’

It is essential to have a background in computer memory mechanisms because it is an important aspect when dealing with the C programming language\n'''
                ),

                
           _boldtext("\n\nHistory of C language"),
          _normaltext('''\nThe base or father of programming languages is ‘ALGOL.’ It was first introduced in 1960. ‘ALGOL’ was used on a large basis in European countries. ‘ALGOL’ introduced the concept of structured programming to the developer community. In 1967, a new computer programming language was announced called as ‘BCPL’ which stands for Basic Combined Programming Language. BCPL was designed and developed by Martin Richards, especially for writing system software. This was the era of programming languages. Just after three years, in 1970 a new programming language called ‘B’ was introduced by Ken Thompson that contained multiple features of ‘BCPL.’ This programming language was created using UNIX operating system at AT&T and Bell Laboratories. Both the ‘BCPL’ and ‘B’ were system programming languages.
          \n'''),





                Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/download.jpeg",
),
),
),
),




_normaltext('''
In 1972, a great computer scientist Dennis Ritchie created a new programming language called ‘C’ at the Bell Laboratories. It was created from ‘ALGOL’, ‘BCPL’ and ‘B’ programming languages. ‘C’ programming language contains all the features of these languages and many more additional concepts that make it unique from other languages.

‘C’ is a powerful programming language which is strongly associated with the UNIX operating system. Even most of the UNIX operating system is coded in ‘C’. Initially ‘C’ programming was limited to the UNIX operating system, but as it started spreading around the world, it became commercial, and many compilers were released for cross-platform systems. Today ‘C’ runs under a variety of operating systems and hardware platforms. As it started evolving many different versions of the language were released. At times it became difficult for the developers to keep up with the latest version as the systems were running under the older versions. To assure that ‘C’ language will remain standard, American National Standards Institute (ANSI) defined a commercial standard for ‘C’ language in 1989. Later, it was approved by the International Standards Organization (ISO) in 1990. ‘C’ programming language is also called as ‘ANSI C’.

\n'''),






                Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/012419_1229_WhatisCProg3.webp",
),
),
),
),



_normaltext('''Languages such as C++/Java are developed from ‘C’. These languages are widely used in various technologies. Thus, ‘C’ forms a base for many other languages that are currently in use.

'''),







                
               



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



  Widget _semiboldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 21,
                
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
        title: const Text("Features of C  "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [




                _boldtext("Features of C Programming Language\n"),
                _normaltext(
'''
C is a procedural programming language. It was initially developed by Dennis Ritchie in the year 1972. It was mainly developed as a system programming language to write an operating system.

The main features of C language include low-level access to memory, a simple set of keywords, and a clean style, these features make C language suitable for system programming like an operating system or compiler development.\n'''
                ),

                
           _boldtext("\n\nWhat are the Most Important Features of C Language?"),


                Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/Features-of-C-Programming-Language.jpg",
),
),
),
),



          _normaltext('''\nHere are some of the most important features of the C language:

         1.Procedural Language
         2.Fast and Efficient
         3.Modularity
         4.Statically Type
         5.General-Purpose Language
         6.Rich set of built-in Operators
         7.Libraries with Rich Functions
         8.Middle-Level Language
         9.Portability
         10.Easy to Extend



'''),

  _semiboldtext('''1. Procedural Language'''),
 _normaltext('''In a procedural language like C step by step, predefined instructions are carried out. C program may contain more than one function to perform a particular task. New people to programming will think that this is the only way a particular programming language works. There are other programming paradigms as well in the programming world. Most of the commonly used paradigm is an object-oriented programming language. '''),

_semiboldtext('''\n2. Fast and Efficient'''),
 _normaltext('''Newer languages like Java, python offer more features than c programming language but due to additional processing in these languages, their performance rate gets down effectively. C programming language as the middle-level language provides programmers access to direct manipulation with the computer hardware but higher-level languages do not allow this. That’s one of the reasons C language is considered the first choice to start learning programming languages. It’s fast because statically typed languages are faster than dynamically typed languages.'''),
 _semiboldtext('''\n3. Modularity'''),
_normaltext(''' concept of storing C programming language code in the form of libraries for further future uses is known as modularity. This programming language can do very little on its own most of its power is held by its libraries. C language has its own library to solve common problems.'''),
_semiboldtext('''4. Statically Type'''),
_normaltext(''' programming language is a statically typed language. Meaning the type of variable is checked at the time of compilation but not at run time. This means each time a programmer types a program they have to mention the type of variables used.'''),
_semiboldtext('''\n5. General-Purpose Language'''),
_normaltext(''' system programming to photo editing software, the C programming language is used in various applications. Some of the common applications where it’s used are as follows: 
Operating systems: Windows, Linux, iOS, Android, OXS
Databases: PostgreSQL, Oracle, MySQL, MS SQL Server, etc.'''),
_semiboldtext('''\n6. Rich set of built-in Operators'''),
_normaltext('''It is a diversified language with a rich set of built-in operators which are used in writing complex or simplified C programs.'''),
_semiboldtext('''\n7. Libraries with Rich Functions'''),
_normaltext(''' libraries and functions in C help even a beginner coder to code with ease.'''),
_semiboldtext(''' \n8. Middle-Level Language'''),
_normaltext(''' As it is a middle-level language so it has the combined form of both capabilities of assembly language and features of the high-level language.'''),
_semiboldtext('''\n9. Portability'''),
_normaltext(''' C language is lavishly portable as programs that are written in C language can run and compile on any system with either no or small changes. '''),
_semiboldtext('''\n10. Easy to Extend'''),
_normaltext(''' written in C language can be extended means when a program is already written in it then some more features and operations can be added to it.
  \n'''),







          ]),
        ),
      ),
    );
  }
}











class MainFunction extends StatefulWidget {
  const MainFunction({super.key});

  @override
  State<MainFunction> createState() => _MainFunctionState();
}

class _MainFunctionState extends State<MainFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.indigoAccent,
        title: const Text("Main Function in c"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [





                
















            const Text("C programming main() function",
                style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text(
                "The main function is a special function in the C programming language. It serves as the entry point for the execution of a C program. When a C program is run, the execution starts from the main function..",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 20,
            ),
            Text("The main function has a specific signature and syntax.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 20,
            ),
            Text(
                "Within the main function, you can write the code that defines the behavior of your program. It typically consists of a series of statements that perform specific tasks. For example, you can perform calculations, read user input, display output, call other functions, and more",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 300, // Minimum width of the container
                        minHeight: 150, // Minimum height of the container
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 4.0,
                          ),
                        ),
                        height: 300,
                        child: HighlightView(
                          '''




 void main() {


    String message = "This is a main Function,illustrate the main function of c programming";
    

    print(message);

    }''',
                          language: 'dart',
                          theme: darculaTheme,
                        ),
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text(
                "Remember that the main function is required in every C program, and it must be defined exactly as shown above. Additionally, the return statement at the end of the main function is optional. If omitted, the C compiler will assume a return value of 0, indicating successful program execution.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
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
  String one =
      '''A variable is a name of the memory location. It is used to store data. Its value can be changed, and it can be reused many times.It is a way to represent memory location through symbol so that it can be easily identified.\n\nLet's see the syntax to declare a variable:\n\nThe example of declaring the variable is given below:''';

  String two =
      '''Here, a, b, c are variables. The int, float, char are the data types.

''';

  String code1 = '''




 void main() {


    int a;
    float b;
    double c;
    char d;

    }''';

  Widget _CodeArea() {
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
                height: 300,
                child: HighlightView(
                  code1,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Variable  in c"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("C programming Variables",
                style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text(one,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 50,
            ),
            _CodeArea(),
            SizedBox(
              height: 20,
            ),
            Text(two,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ]),
        ),
      ),
    );
  }
}















class Datatype extends StatefulWidget {
  const Datatype({super.key});

  @override
  State<Datatype> createState() => _DatatypeState();
}

class _DatatypeState extends State<Datatype> {


  
  String two =
      '''Here, a, b, c are variables. The int, float, char are the data types.

''';

  

  
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



  Widget _semiboldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 21,
                
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





  Widget buildTableCell(String text) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(text),
    );
  }

  Widget _MakeTable() {
    return Table(
      border: TableBorder.all(), // Add borders around cells
      children: [
        TableRow(
          children: [
            buildTableCell('Data type'),
            buildTableCell('Size\n(bytes())'),
            buildTableCell('Range'),
            buildTableCell('Format\nSpecifier'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('short int'),
            buildTableCell('2'),
            buildTableCell('-32,768 to 32,767 '),
            buildTableCell('%hd '),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned\nshort int '),
            buildTableCell('2'),
            buildTableCell('0 to 65,535 '),
            buildTableCell('%hu '),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned\n int '),
            buildTableCell('4'),
            buildTableCell('0 to 4,294,967,295 '),
            buildTableCell('%u'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('int'),
            buildTableCell('4'),
            buildTableCell('-2,147,483,648 to\n2,147,483,647 '),
            buildTableCell('%d'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('long int '),
            buildTableCell('4'),
            buildTableCell('-2,147,483,648 to\n2,147,483,647 '),
            buildTableCell('%ld'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned\nlong int '),
            buildTableCell('4'),
            buildTableCell("0 to 4,294,967,295 "),
            buildTableCell('%lu'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('long long\nint '),
            buildTableCell('8'),
            buildTableCell('-(2^63) to (2^63)-1 '),
            buildTableCell('%lld'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned \nlong long int '),
            buildTableCell('8'),
            buildTableCell('0 to \n18,446,744,073,709,551,615 '),
            buildTableCell('%llu'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned char '),
            buildTableCell('1'),
            buildTableCell('0 to 255 '),
            buildTableCell('%c'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('float'),
            buildTableCell('4'),
            buildTableCell('-(2^63) to (2^63)-1 '),
            buildTableCell('%f '),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('long long\nint '),
            buildTableCell('4'),
            buildTableCell('.1.7E-308 to 1.7E+308'),
            buildTableCell('%d'),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Data Type in c"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
             _boldtext('''Data type in C'''),
             _normaltext('''\nEach variable in C has an associated data type. It specifies the type of data that the variable can store like integer, character, floating, double, etc. Each data type requires different amounts of memory and has some specific operations which can be performed over it. The data type is a collection of data with values having fixed values, meaning as well as its characteristics.\n\nThe data types in C can be classified as follows:\n'''),
           
           
            const SizedBox(
              height: 50,
            ),

             _semiboldtext('''Primitive Data Types:'''),
             _normaltext('''Primitive data types are the most basic data types that are used for representing simple values such as integers, float, characters, etc.\n'''),


           _semiboldtext('''User Defined Data Types:'''),
           _normaltext('''The user-defined data types are defined by the user himself.\n'''),

           _semiboldtext('''Derived Types:'''),
           _normaltext('''The data types that are derived from the primitive or built-in datatypes are referred to as Derived Data Types'''),





      





_normaltext('''\nDifferent data types also have different ranges up to which they can store numbers. These ranges may vary from compiler to compiler. Below is a list of ranges along with the memory requirement and format specifiers on the 32-bit GCC compiler.\n\n'''),


            _MakeTable(),
            const SizedBox(
              height: 50,
            ),
            _CodeArea('''

 void main() {


    int a;
    float b;
    double c;
    char d;

    }
    '''),
            SizedBox(
              height: 20,
            ),
            Text(two,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ]),
        ),
      ),
    );
  }
}











class inputOutput extends StatefulWidget {
  const inputOutput({super.key});

  @override
  State<inputOutput> createState() => _inputOutputState();
}

class _inputOutputState extends State<inputOutput> {
  String one =
      '''In C programming, you can use the stdio.h library to perform standard input and output operations. The standard input (stdin) is used to read data from the user, and the standard output (stdout) is used to display data to the user.

Here's an example that demonstrates how to use standard input and output in C''';

  String two =
      '''In this example, we use printf to display a message to the user, asking them to enter a number. Then we use scanf to read the user's input and store it in the variable num. Finally, we use printf again to display the entered number.

Compile and run the program, and you will see the prompt asking for input. After entering a number and pressing Enter, the program will display the entered number on the console.

You can perform various operations with standard input and output in C, such as reading strings, characters, and floating-point numbers, as well as displaying formatted output using printf and reading formatted input using scanf. The stdio.h library provides many functions for input and output operations, so you can explore them based on your specific requirements.

''';







  String code1 = '''




 #include <stdio.h>

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    
    printf("You entered: %d", num);
    
    return 0;
}''';

  Widget _CodeArea() {
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
                height: 300,
                child: HighlightView(
                  code1,
                  language: 'dart',
                  theme: darculaTheme,
                ),
              ),
            )));
  }

  Widget buildTableCell(String text) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(text),
    );
  }

  Widget _MakeTable() {
    return Table(
      border: TableBorder.all(
        color: Colors.indigo,
        width: 10
      ), 
      

      // Add borders around cells
      children: [
        TableRow(
          children: [
            buildTableCell('Data type'),
            buildTableCell('Size\n(bytes())'),
            buildTableCell('Range'),
            buildTableCell('Format\nSpecifier'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('short int'),
            buildTableCell('2'),
            buildTableCell('-32,768 to 32,767 '),
            buildTableCell('%hd '),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned\nshort int '),
            buildTableCell('2'),
            buildTableCell('0 to 65,535 '),
            buildTableCell('%hu '),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned\n int '),
            buildTableCell('4'),
            buildTableCell('0 to 4,294,967,295 '),
            buildTableCell('%u'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('int'),
            buildTableCell('4'),
            buildTableCell('-2,147,483,648 to\n2,147,483,647 '),
            buildTableCell('%d'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('long int '),
            buildTableCell('4'),
            buildTableCell('-2,147,483,648 to\n2,147,483,647 '),
            buildTableCell('%ld'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned\nlong int '),
            buildTableCell('4'),
            buildTableCell("0 to 4,294,967,295 "),
            buildTableCell('%lu'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('long long\nint '),
            buildTableCell('8'),
            buildTableCell('-(2^63) to (2^63)-1 '),
            buildTableCell('%lld'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned \nlong long int '),
            buildTableCell('8'),
            buildTableCell('0 to \n18,446,744,073,709,551,615 '),
            buildTableCell('%llu'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('unsigned char '),
            buildTableCell('1'),
            buildTableCell('0 to 255 '),
            buildTableCell('%c'),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('float'),
            buildTableCell('4'),
            buildTableCell('-(2^63) to (2^63)-1 '),
            buildTableCell('%f '),
          ],
        ),
        TableRow(
          children: [
            buildTableCell('long long\nint '),
            buildTableCell('4'),
            buildTableCell('.1.7E-308 to 1.7E+308'),
            buildTableCell('%d'),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stdio()"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Stdio() in C",
                style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 23,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text(one,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 50,
            ),
            _CodeArea(),
            SizedBox(
              height: 20,
            ),
            Text(two,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ]),
        ),
      ),
    );
  }
}




























///////----------------ciadvanceTopicpage
////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////

class Cadvancetopicpage extends StatefulWidget {
  const Cadvancetopicpage({super.key});

  @override
  State<Cadvancetopicpage> createState() => _CadvancetopicpageState();
}

class _CadvancetopicpageState extends State<Cadvancetopicpage> {



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
          "C Advance learning",
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
                    width: 360,
                    child: const ListTile(
                      title: Text(
                        "C Advance",
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
            customCard("Array", "Contiguous data in C ",
                (context) => Array(), context),
            customCard("String ", "Character array",
                (context) => Cstring(), context),
            customCard("Structure", "A user defined data structure",
                (context) => Struct(), context),
            customCard("Pointer", "Memory allocation in C",
                (context) => Union(), context),
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
              MaterialPageRoute(builder: (context) =>CadvanceQuizpage()));
              }, 
              child: const Text("Quiz 1")),


              ElevatedButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) =>CadvanceQuizpage()));},
               child: const Text("Quiz 2")),


              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CadvanceQuizpage()));}, child: const Text("Quiz 3")),
            ]),
          ],
        ),
      ),
    );
  }
}





class Array extends StatefulWidget {
  const Array({super.key});

  @override
  State<Array> createState() => _ArrayState();
}

class _ArrayState extends State<Array> {
 


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



   
  Widget _semiboldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 21,
                
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
        title: const Text("Array in C"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Array in C?"),
                _normaltext(
'''\nAn array in C is a fixed-size collection of similar data items stored in contiguous memory locations. It can be used to store the collection of primitive data types such as int, char, float, etc., and also derived and user-defined data types such as pointers, structures, etc.\n.'''),


                Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/download (1).png",
),
),
),
),
                    SizedBox(
              height: 20,
            ),
                _boldtext("\n\nC Array Declaration\n"),
                _normaltext(
'''In C, we have to declare the array like any other variable before using it. We can declare an array by specifying its name, the type of its elements, and the size of its dimensions. When we declare an array in C, the compiler allocates the memory block of the specified size to the array name.

'''
                ),


                _boldtext(

'''\nSyntax of Array Declaration\n'''
                ),
                _semiboldtext(
'''             

    data_type array_name [size];
                               or
    data_type array_name [size1] [size2]..[sizeN]; 

'''
                ),




                Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/c-array-declaration.png",
),
),
),
),
         




              
                _normaltext(
'''\nThe C arrays are static in nature, i.e., they are allocated memory at the compile time.

'''
                ),




             SizedBox(
              height: 20,
            ),
           

             SizedBox(
              height: 20,
            ),

            _normaltext("A Code : \n"),
             _CodeArea(
'''

// C Program to illustrate element access using array
// subscript
#include <stdio.h>

int main()
{

	// array declaration and initialization
	int arr[5] = { 15, 25, 35, 45, 55 };

	// accessing element at index 2 i.e 3rd element
	printf("Element at arr[2]: %d", arr[2]);

	// accessing element at index 4 i.e last element
	printf("Element at arr[4]: %d", arr[4]);

	// accessing element at index 0 i.e first element
	printf("Element at arr[0]: %d", arr[0]);

	return 0;
}

'''
             ),

           SizedBox(
              height: 60,
            ),


        
            _CodeArea(
''' 
      
      
      
     Element at arr[2]: 35
    Element at arr[4]: 55
    Element at arr[0]: 15
       
       
       '''
            ),

              SizedBox(
              height: 20,
            ),

          
         



          ]),
        ),
      ),
    );
  }
}


















class Cstring extends StatefulWidget {
  const Cstring({super.key});

  @override
  State<Cstring> createState() => _CstringState();
}

class _CstringState extends State<Cstring> {
  

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
        title: const Text("String in C"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is String? "),
                _normaltext(
'''A String in C programming is a sequence of characters terminated with a null character "\0". The C String is stored as an array of characters. The difference between a character array and a C string is the string is terminated with a unique character ‘\0’.\n'''
                ),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/Strings-in-C.webp",
),
),
),
),






               _boldtext("C String Declaration Syntax"),
               _normaltext('''
Declaring a string in C is as simple as declaring a one-dimensional array. Below is the basic syntax for declaring a string.
                              char string_name[size];
In the above syntax str_name is any name given to the string variable and size is used to define the length of the string, i.e the number of characters strings will store.

There is an extra terminating character which is the Null character (‘\0’) used to indicate the termination of a string that differs strings from normal character arrays.'''),
                _CodeArea(
'''
     
      // C program to illustrate strings

#include <stdio.h>
#include <string.h>

int main()
{
	// declare and initialize string
	char str[] = "Geeks";

	// print string
	printf("%s", str);

	int length = 0;
	length = strlen(str);

	// displaying the length of string
	printf("Length of string str is %d", length);

	return 0;
}

       
       '''
                ),


               


                SizedBox(height: 20,),
                _CodeArea(
                  '''
      // output
       Geeks
       Length of string str is 5'''
                )




         



          ]),
        ),
      ),
    );
  }
}












class Struct extends StatefulWidget {
  const Struct({super.key});

  @override
  State<Struct> createState() => _StructState();
}

class _StructState extends State<Struct> {
  
 

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

  Widget _semiboldtext(String str)
  {
     return Text(str,
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 21,
                
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
        title: const Text("Structure"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Structure in C"),
                _normaltext(
'''The structure in C is a user-defined data type that can be used to group items of possibly different types into a single type. The struct keyword is used to define the structure in the C programming language. The items in the structure are called its member and they can be of any valid data type.''' ),

Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/Structure-In-C.png",
),
),
),
),

                
                _boldtext("\nC Structure Declaration"),
                _normaltext(
'''We have to declare structure in C before using it in our program. In structure declaration, we specify its member variables along with their datatype.
 We can use the struct keyword to declare the structure in C using the following syntax: '''),
 
                       
                       
                       
                       
     _semiboldtext('''\n\n struct structure_name {
                                          
                  data_type member_name1;
                  data_type member_name1;
                  ....
                  ....
                   };
\n'''
                ),

                
                _normaltext(
'''\n

Example code\n'''
                ),

                _CodeArea(
'''      

    // C program to illustrate the use of structures
#include <stdio.h>

// declaring structure with name str1
struct str1 {
	int i;
	char c;
	float f;
	char s[30];
};

// declaring structure with name str2
struct str2 {
	int ii;
	char cc;
	float ff;
} var; // variable declaration with structure template

// Driver code
int main()
{
	// variable declaration after structure template
	// initialization with initializer list and designated
	// initializer list
	struct str1 var1 = { 1, 'A', 1.00, "GeeksforGeeks" },
				var2;
	struct str2 var3 = { .ff = 5.00, .ii = 5, .cc = 'a' };

	// copying structure using assignment operator
	var2 = var1;

	printf("Struct 1: i = %d, c = %c, f = %f, s = %s",
		var1.i, var1.c, var1.f, var1.s);
	printf("Struct 2: i = %d, c = %c, f = %f, s = %s",
		var2.i, var2.c, var2.f, var2.s);
	printf("Struct 3 i = %d, c = %c, f = %f", var3.ii,
		var3.cc, var3.ff);

	return 0;
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
             printf ("%d " , i);
           }
           getch();
     }
          
          '''
          ),



          _normaltext("\nOutput: \n"),
          _CodeArea(
''' 

 Struct 1:
    i = 1, c = A, f = 1.000000, s = GeeksforGeeks
Struct 2:
    i = 1, c = A, f = 1.000000, s = GeeksforGeeks
Struct 3
    i = 5, c = a, f = 5.000000
  
  '''
          ),







       


               
 

          ]),
        ),
      ),
    );
  }
}














class Union extends StatefulWidget {
  const Union({super.key});

  @override
  State<Union> createState() => _UnionState();
}

class _UnionState extends State<Union> {
  

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
        title: const Text("Pointer "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [


                _normaltext('''Pointers are one of the core components of the C programming language. A pointer can be used to store the memory address of other variables, functions, or even other pointers. The use of pointers allows low-level memory access, dynamic memory allocation, and many other functionality in C.\n'''),

                _boldtext("What is a Pointer in C?"),
                _normaltext(
'''A pointer is defined as a derived data type that can store the address of other C variables or a memory location. We can access and manipulate the data stored in that memory location using pointers.\n''' ),
                
                _boldtext("\nSyntax "),
                _normaltext(
'''The syntax of pointers is similar to the variable declaration in C, but we use the ( * ) dereferencing operator in the pointer declaration.

              datatype * ptr;
              
where

ptr is the name of the pointer.
datatype is the type of data it is pointing to.''' ),

               

                _CodeArea(
'''


 // C Program to find the size of different pointers types
#include <stdio.h>

// dummy structure
struct str {
};

// dummy function
void func(int a, int b){};

int main()
{
	// dummy variables definitions
	int a = 10;
	char c = 'G';
	struct str x;

	// pointer definitions of different types
	int* ptr_int = &a;
	char* ptr_char = &c;
	struct str* ptr_str = &x;
	void (*ptr_func)(int, int) = &func;
	void* ptr_vn = NULL;

	// printing sizes
	printf("Size of Integer Pointer \t:\t%d bytes\n",
		sizeof(ptr_int));
	printf("Size of Character Pointer\t:\t%d bytes\n",
		sizeof(ptr_char));
	printf("Size of Structure Pointer\t:\t%d bytes\n",
		sizeof(ptr_str));
	printf("Size of Function Pointer\t:\t%d bytes\n",
		sizeof(ptr_func));
	printf("Size of NULL Void Pointer\t:\t%d bytes",
		sizeof(ptr_vn));

	return 0;
}


'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

    Size of Integer Pointer      :    8 bytes
Size of Character Pointer    :    8 bytes
Size of Structure Pointer    :    8 bytes
Size of Function Pointer    :    8 bytes
Size of NULL Void Pointer    :    8 bytes
    
    
    '''
          ),

          
         



          ]),
        ),
      ),
    );
  }
}














//////////////////////////////////////
/////////////////////








class Cintertopicpage extends StatefulWidget {
  const Cintertopicpage({super.key});

  @override
  State<Cintertopicpage> createState() => _CintertopicpageState();
}

class _CintertopicpageState extends State<Cintertopicpage> {



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
          "C Intemediate learning",
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
                    width: 360,
                    child: const ListTile(
                      title: Text(
                        "C programming intermediate",
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
            customCard("Conditional Statement", "Decision making  in C ",
                (context) => Conditionalstatement(), context),
            customCard("Switch Statement", "Multiple case conditional statement",
                (context) => Switchcase(), context),
            customCard("Flow/Loop in C", "For,While,Do while loop",
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
              MaterialPageRoute(builder: (context) =>CinterQuizpage()));
              }, 
              child: const Text("Quiz 1")),


              ElevatedButton(onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) =>CinterQuizpage()));},
               child: const Text("Quiz 2")),


              ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CinterQuizpage()));}, child: const Text("Quiz 3")),
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
        title: const Text("Condition in C"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Conditionla statement in C"),
                _normaltext(
'''The conditional statements (also known as decision control structures) such as if, if else, switch, etc. are used for decision-making purposes in C/C++ programs.

They are also known as Decision-Making Statements and are used to evaluate one or more conditions and make the decision whether to execute a set of statements or not. These decision-making statements in programming languages decide the direction of the flow of program execution.'''),
                    SizedBox(
              height: 20,
            ),
                _boldtext("Need of Conditional Statements"),
                _normaltext(
'''There come situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arise in programming also where we need to make some decisions and based on these decisions we will execute the next block of code. For example, in C if x occurs then execute y else execute z. There can also be multiple conditions like in C if x occurs then execute p, else if condition y occurs execute q, else execute r. This condition of C else-if is one of the many ways of importing multiple conditions. 



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



                _boldtext("1. if in C"),
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
'''// C program to illustrate If statement
#include <stdio.h>

int main()
{
	int i = 10;

	if (i > 15) {
		printf("10 is greater than 15");
	}

	printf("I am Not in if");
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

		printf("i is smaller than 15");
	}
	else {

		printf("i is greater than 15");
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
'''A nested if in C is an if statement that is the target of another if statement. Nested if statements mean an if statement inside another if statement. Yes, both C and C++ allow us to nested if statements within if statements, i.e, we can place an if statement inside another if statement.\n\nSyntax of Nested if-else
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
			printf("i is smaller than 12 too");
		else
			printf("i is greater than 15");
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
		printf("i is 10");
	else if (i == 15)
		printf("i is 15");
	else if (i == 20)
		printf("i is 20");
	else
		printf("i is not present");
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
        title: const Text("Switch in C"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Switch statement in C"),
                _normaltext(
'''The switch statement in C is an alternate to if-else-if ladder statement which allows us to execute multiple operations for the different possibles values of a single variable called switch variable. Here, We can define various statements in the multiple cases for the different values of a single variable.

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
		printf("Case 1 is executed");
		break;
	case 2:
		printf("Case 2 is executed");
		break;
	default:
		printf("Default Case is executed");
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
        title: const Text("Loop in C"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Loop in C programming"),
                _normaltext(
'''Loop is used to execute the block of code several times according to the condition given in the loop. It means it executes the same code multiple times so it saves code and also helps to traverse the elements of an array.\n\n'''
                ),
                
                _boldtext("Type of Loop in C programming"),
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
             printf ("%d " , i);
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

                _boldtext("Control Flow in C programming"),
                _normaltext(
'''In simple,Control of flow defines as terminatead a loop in compile time at any specific state without complete full iteration of a loop in c,Therea area many flow controller in c,Mostly Contine and Break'''
                ),
                
                _boldtext("\nContinue in C "),
                _normaltext(
'''The continue statement in C language is used to bring the program control to the beginning of the loop. The continue statement skips some lines of code inside the loop and continues with the next iteration. It is mainly used for a condition so that we can skip some code for a particular condition.\n'''
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
		printf("%d ", i);
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
		printf("%d ", i);
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

          _boldtext("\n\nBreak in C : "),
          _normaltext(
'''The break in C is a loop control statement that breaks out of the loop when encountered. It can be used inside loops or switch statements to bring the control out of the block. The break statement can only break out of a single loop at a time.\n'''
          ),
          _CodeArea(
'''// C Program to dem@override
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
			printf("%d ", i);
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



















