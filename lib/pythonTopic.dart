import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cquiz.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';


class Pythonbasictopinpage extends StatefulWidget {
  const Pythonbasictopinpage({super.key});

  @override
  State<Pythonbasictopinpage> createState() => _PythonbasictopinpageState();
}

class _PythonbasictopinpageState extends State<Pythonbasictopinpage> {
 
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
                        "  Pyhton  Basic",
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
            customCard("Introduction", "History of pyhton programming",
                (context) => const Introduction(), context),
            customCard("Features", "Features of python programming",
                (context) => const Features(), context),
            customCard("Main Function", "Main function of python programming",
                (context) => Mainfunction(), context),
            customCard("Variable", "Varaible that contain value",
                (context) => Variable(), context),
            customCard("Data Type", "Int,Char,List,touple,dictionary etc",
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
        title: const Text("Introduction of python "),
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
"assets/images/python.png",
),
),
),
),








                _boldtext("History of python programming"),
                _normaltext(
'''Python laid its foundation in the late 1980s.
The implementation of Python was started in December 1989 by Guido Van Rossum at CWI in Netherland.
In February 1991, Guido Van Rossum published the code (labeled version 0.9.0) to alt.sources.\n'''),



Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/download (2).jpeg",
),
),
),
),


_normaltext(
'''PIn 1994, Python 1.0 was released with new features like lambda, map, filter, and reduce.
Python 2.0 added new features such as list comprehensions, garbage collection systems.
On December 3, 2008, Python 3.0 (also called "Py3K") was released. It was designed to rectify the fundamental flaw of the language.
ABC programming language is said to be the predecessor of Python language, which was capable of Exception Handling and interfacing with the Amoeba Operating System.
The following programming languages influence Python:
ABC language.
Modula-3.\n'''
                ),

                _boldtext("Why the Name Python?"),
                _normaltext(
'''There is a fact behind choosing the name Python. Guido van Rossum was reading the script of a popular BBC comedy series "Monty Python's Flying Circus". It was late on-air 1970s.

Van Rossum wanted to select a name which unique, sort, and little-bit mysterious. So he decided to select naming Python after the "Monty Python's Flying Circus" for their newly created programming language.

The comedy series was creative and well random. It talks about everything. Thus it is slow and unpredictable, which made it very interesting.

Python is also versatile and widely used in every technical field, such as Machine Learning, Artificial Intelligence, Web Development, Mobile Application, Desktop Application, Scientific Calculation, etc.'''
                )

                
        
   
         



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

                _boldtext("Python Feature\n"),
                _normaltext(
'''Python provides many useful features which make it popular and valuable from the other programming languages. It supports object-oriented programming, procedural programming approaches and provides dynamic memory allocation. We have listed below a few essential features.\n
'''
                ),

                _boldtext("1) Easy to Learn and Use\n"),
                _normaltext('''Python is easy to learn as compared to other programming languages. Its syntax is straightforward and much the same as the English language. There is no use of the semicolon or curly-bracket, the indentation defines the code block. It is the recommended programming language for beginners.\n'''),
                _boldtext("2) Expressive Language\n"),
                _normaltext('''python can perform complex tasks using a few lines of code. A simple example, the hello world program you simply type print("Hello World"). It will take only one line to execute, while Java or C takes multiple lines.\n'''),
                _boldtext("3) Interpreted Language\n"),
                _normaltext('''Python is an interpreted language; it means the Python program is executed one line at a time. The advantage of being interpreted language, it makes debugging easy and portable.\n'''),
                _boldtext("4) Cross-platform Language\n"),
                _normaltext('''Python can run equally on different platforms such as Windows, Linux, UNIX, and Macintosh, etc. So, we can say that Python is a portable language. It enables programmers to develop the software for several competing platforms by writing a program only once.\n'''),
                _boldtext("5) Object-Oriented Language\n"),
                _normaltext('''Python is freely available for everyone. It is freely available on its official website www.python.org. It has a large community across the world that is dedicatedly working towards make new python modules and functions. Anyone can contribute to the Python community. The open-source means, "Anyone can download its source code without paying any penny.\n'''),
                _boldtext("6) Extensible\n"),
                _normaltext(''''It implies that other languages such as C/C++ can be used to compile the code and thus it can be used further in our Python code. It converts the program into byte code, and any platform can use that byte code.\n'''),
               


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

                _boldtext("Main Functon in  pyhton"),
                _normaltext(
'''Main function is like the entry point of a program. However, Python interpreter runs the code right from the first line. The execution of the code starts from the starting line and goes line by line. It does not matter where the main function is present or it is present or not.

Since there is no main() function in Python, when the command to run a Python program is given to the interpreter, the code that is at level 0 indentation is to be executed. However, before doing that, it will define a few special variables. __name__ is one such special variable. If the source file is executed as the main program, the interpreter sets the __name__ variable to have a value __main__. If this file is being imported from another module, __name__ will be set to the module’s name.
__name__ is a built-in variable which evaluates to the name of the current module. \n\n'''
                ),
                
               _CodeArea(
'''

# Python program to demonstrate
# main() function
  
  
print("Hello")
  
# Defining main function
def main():
    print("hey there")
  
  
# Using the special variable 
# __name__
if __name__=="__main__":
    main()

'''
    
             ),

   
         SizedBox(height: 20,),

         _CodeArea(
          '''   
          
          Hello
          hey there
'''
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

                _boldtext("Variable in pyhton"),
                _normaltext(
'''Python Variable is containers that store values. Python is not “statically typed”. We do not need to declare variables before using them or declare their type. A variable is created the moment we first assign a value to it. A Python variable is a name given to a memory location. It is the basic unit of storage in a program.

Example of Variable in Python
An Example of a Variable in Python is a representational name that serves as a pointer to an object. Once an object is assigned to a variable, it can be referred to by that name. In layman’s terms, we can say that Variable in Python is containers that store values.

Here we have stored “Geeksforgeeks”  in a var which is variable, and when we call its name the stored information will get printed\n'''
                ),

                _CodeArea(
                  '''




     age = 45
 
# A floating point
salary = 1456.8
 
# A string
name = "John"
 
print(age)
print(salary)
print(name)
    
    '''

 
                ),

                SizedBox(height: 20,),
                _CodeArea(
'''  


45
1456.8
John
   '''
                ),


                SizedBox(height: 30), 
                _boldtext("Rules for Python variables"),
                _normaltext('''
*A Python variable name must start with a letter or the underscore character.
*A Python variable name cannot start with a number.
*A Python variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ ).
*Variable in Python names are case-sensitive (name, Name, and NAME are three different variables).
*The reserved words(keywords) in Python cannot be used to name the variable in Python.'''),
          
                
               



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

                _boldtext("Data type in python"),
                _normaltext(
'''Data types are the classification or categorization of data items. It represents the kind of value that tells what operations can be performed on a particular data. Since everything is an object in Python programming, data types are actually classes and variables are instances (object) of these classes. The following are the standard or built-in data types in Python:

   Numeric
   Sequence Type
   Boolean
   Set
   Dictionary
   Binary Types( memoryview, bytearray, bytes)\n.'''),




   _boldtext("What is Python type()  Function?\n"),
   _normaltext("To define the values ​​of various data types and check their data types we use the type() function. Consider the following\n"),
   _CodeArea('''

    # DataType Output: str
x = "Hello World"
 
# DataType Output: int
x = 50
 
# DataType Output: float
x = 60.5
 
# DataType Output: complex
x = 3j
 
# DataType Output: list
x = ["geeks", "for", "geeks"]
 
# DataType Output: tuple
x = ("geeks", "for", "geeks")
 
# DataType Output: range
x = range(10)
 
# DataType Output: dict
x = {"name": "Suraj", "age": 24}
 
# DataType Output: set
x = {"geeks", "for", "geeks"}
 
# DataType Output: frozenset
x = frozenset({"geeks", "for", "geeks"})
 
# DataType Output: bool
x = True
 
# DataType Output: bytes
x = b"Geeks"
 
# DataType Output: bytearray
x = bytearray(4)
 
# DataType Output: memoryview
x = memoryview(bytes(6))
 
# DataType Output: NoneType
x = None


  
   '''),




   _boldtext("\n\nNumeric Data Type in Python\n"),
   _normaltext('''The numeric data type in Python represents the data that has a numeric value. A numeric value can be an integer, a floating number, or even a complex number. These values are defined as Python int, Python float, and Python complex classes in Python.

\n# Integers – This value is represented by int class. It contains positive or negative whole numbers (without fractions or decimals). In Python, there is no limit to how long an integer value can be.
\n# Float – This value is represented by the float class. It is a real number with a floating-point representation. It is specified by a decimal point. Optionally, the character e or E followed by a positive or negative integer may be appended to specify scientific notation.
\n# Complex Numbers – Complex number is represented by a complex class. It is specified as (real part) + (imaginary part)j. For example – 2+3j\n'''),
_CodeArea(
  '''# Python program to
# demonstrate numeric value
 
a = 5
print("Type of a: ", type(a))
 
b = 5.0
print("\nType of b: ", type(b))
 
c = 2 + 4j
print("\nType of c: ", type(c))'''
),


SizedBox(height: 20,),
_CodeArea(
  '''

   Type of a:  <class 'int'>

  Type of b:  <class 'float'>

  Type of c:  <class 'complex'>
  
  
  
  '''
),


 

 _boldtext("\n\nString Data Type\n"),
 _normaltext('''
Strings in Python are arrays of bytes representing Unicode characters. A string is a collection of one or more characters put in a single quote, double-quote, or triple-quote. In python there is no character data type, a character is a string of length one. It is represented by str class.  

Creating String
Strings in Python can be created using single quotes or double quotes or even triple quotes. 

\n\n'''),

_CodeArea(
  '''

# Python Program for
# Creation of String
 
# Creating a String
# with single Quotes
String1 = 'Welcome to the Geeks World'
print("String with the use of Single Quotes: ")
print(String1)
 
# Creating a String
# with double Quotes
String1 ="I'm a Geek"
print("String with the use of Double Quotes: ")
print(String1)
print(type(String1))
 
# Creating a String
# with triple Quotes
String1 = "I'm a Geek and I live in a world of "Geeks""
print("String with the use of Triple Quotes: ")
print(String1)
print(type(String1))
 
# Creating String with triple
# Quotes allows multiple lines
String1 = "Geeks
            For
            Life"
print("Creating a multiline String: ")
print(String1)
   
   
   '''
),



_boldtext("\n\nList Data Type\n"),
_normaltext('''Lists are just like arrays, declared in other languages which is an ordered collection of data. It is very flexible as the items in a list do not need to be of the same type.  \n'''),
_CodeArea('''

# Creating a List
List = []
print("Initial blank List: ")
print(List)

# Creating a List with
# the use of a String
List = ['GeeksForGeeks']
print("List with the use of String: ")
print(List)

# Creating a List with
# the use of multiple values
List = ["Geeks", "For", "Geeks"]
print("List containing multiple values: ")
print(List[0])
print(List[2])

# Creating a Multi-Dimensional List
# (By Nesting a list inside a List)
List = [['Geeks', 'For'], ['Geeks']]
print("Multi-Dimensional List: ")
print(List)




'''),


  _boldtext("\noutput\n"),
  _CodeArea('''
Initial empty Tuple: 
()

Tuple with the use of String: 
('Geeks', 'For')

Tuple using List: 
(1, 2, 4, 5, 6)

Tuple with the use of function: 
('G', 'e', 'e', 'k', 's')

Tuple with nested tuples: 
((0, 1, 2, 3), ('python', 'geek'))'''),




                
              
               

 
          



    

   
         



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

                _boldtext("pyhton output\n"),
                _normaltext(
'''In Python, we can simply use the print() function to print output. For example\n'''
                ),
                
         
                _CodeArea('''


     print('Python is powerful')

     # Output: Python is powerful


'''

),


          _boldtext("\n\nPython Input\n"),
          _normaltext(
'''\n While programming, we might want to take the input from the user. In Python, we can use the input() function. \n'''
          ),
          
          _CodeArea(
''' 

# using input() to take user input
num = input('Enter a number: ')

print('You Entered:', num)

print('Data type of num:', type(num))
    
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
///
///
///

class Pythonintertopicpage extends StatefulWidget {
  const Pythonintertopicpage({super.key});

  @override
  State<Pythonintertopicpage> createState() => _PythonintertopicpageState();
}

class _PythonintertopicpageState extends State<Pythonintertopicpage> {
  


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
          "python intermediant",
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
                        "  Pyhton intemediant",
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
             customCard("Conditional Statement", "Decision making  in python ",
                (context) => Conditionalstatement(), context),
            customCard("Switch Statement", "Multiple case conditional statement",
                (context) => Switchcase(), context),
            customCard("Flow/Loop in python", "For,While,Do while loop,for each loop",
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
        title: const Text("Condition in python"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Conditionla statement in python"),
                _normaltext(
'''The conditional statements (also known as decision control structures) such as if, if else, switch, etc. are used for decision-making purposes in python programs.

They are also known as Decision-Making Statements and are used to evaluate one or more conditions and make the decision whether to execute a set of statements or not. These decision-making statements in programming languages decide the direction of the flow of program execution.'''),
                    SizedBox(
              height: 20,
            ),
                _boldtext("Need of Conditional Statements"),
                _normaltext(
'''There come situations in real life when we need to make some decisions and based on these decisions, we decide what should we do next. Similar situations arise in programming also where we need to make some decisions and based on these decisions we will execute the next block of code. For example, in python if x occurs then execute y else execute z. There can also be multiple conditions like in python if x occurs then execute p, else if condition y occurs execute q, else execute r. This condition of python else-if is one of the many ways of importing multiple conditions. 



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



                _boldtext("1. if in python"),
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


if 10 > 5:
   print("10 greater than 5")
 
print("Program ended")


#output
10 greater than 5
Program ended
'''
             ),

           SizedBox(
              height: 60,
            ),


            _boldtext("2. if-else in python"),
            

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



x = 3
if x == 4:
   print("Yes")
else:
   print("No")


   //No
}
'''
          ),


           SizedBox(
              height: 60,
            ),



            _boldtext("3. Nested if-else in python"),
            _normaltext(
'''A nested if in pyhton is an if statement that is the target of another if statement. Nested if statements mean an if statement inside another if statement. Yes, both pyhthon allow us to nested if statements within if statements, i.e, we can place an if statement inside another if statement.\n\nSyntax of Nested if-else
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
'''


# Nested if statement example
num = 10
 
if num > 5:
   print("Bigger than 5")
 
   if num <= 15:
      print("Between 5 and 15")





//output: i is smaller than 15
Bigger than 5
Between 5 and 15
'''),



   SizedBox(height: 60,),
          _boldtext("4. if-else-if Ladder in python"),
          _normaltext(
'''The if else if statements are used when the user has to decide among multiple options. The pyhonif statements are executed from the top down. As soon as one of the conditions controlling the if is true, the statement associated with that if is executed, and the rest of the C else-if ladder is bypassed. If none of the conditions is true, then the final else statement will be executed. if-else-if ladder is similar to the switch statement.

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
# if-elif statement example
 
letter = "A"
 
if letter == "B":
    print("letter is B")
 
elif letter == "C":
    print("letter is C")
 
elif letter == "A":
    print("letter is A")
 
else:
    print("letter isn't A, B or C")





// output:
letter is A

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
        title: const Text("Switch in pyhton"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Switch statement in python"),
                _normaltext(
'''Unlike every other programming language we have used before, Python does not have a switch or case statement. To get around this fact, we use dictionary mapping.

Method 1:  Switch Case implement in Python using Dictionary Mapping
In Python, a dictionary is an unordered collection of data values that can be used to store data values. Unlike other data types, which can only include a single value per element, dictionaries can also contain a key: value pair.
The key value of the dictionary data type functions as cases in a switch statement when we use the dictionary to replace the Switch case statement.\n'''
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

# Function to convert number into string
# Switcher is dictionary data type here
def numbers_to_strings(argument):
    switcher = {
        0: "zero",
        1: "one",
        2: "two",
    }
 
    # get() method of dictionary data type returns
    # value of passed argument if it is present
    # in dictionary otherwise second argument will
    # be assigned as default value of passed argument
    return switcher.get(argument, "nothing")
 
# Driver program
if __name__ == "__main__":
    argument=0
    print (numbers_to_strings(argument))


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
        title: const Text("Loop in python"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Loop in python"),
                _normaltext(
'''Loop is used to execute the block of code several times according to the condition given in the loop. It means it executes the same code multiple times so it saves code and also helps to traverse the elements of an array.\n\n'''
                ),
                
                _boldtext("Type of Loop in python"),
                _normaltext(
'''Structurely in  there are three type of loop ,whom are structurely diffrent but can use for same perpuse,they are -
       1.For Loop
       2.While Loop
      \n\n'''
                ),

                _boldtext("1. for Loop"),
                _normaltext(
'''Python For loop is used for sequential traversal i.e. it is used for iterating over an iterable like String, Tuple, List, Set, or Dictionary. 

It also executes the code until condition is false. In this three parameters are given that is

   > Initialization
   > Condition
   > Increment/Decrement\n

Syntax\n'''
                ),

                _CodeArea(
'''      

    for(initialization;condition;increment/decrement)
     
           //code
     
      
     '''
),
          _normaltext(
'''\nIt is used when number of iterations are known where while is used when number of iterations are not known.\n'''
          ),
          
          _CodeArea(
'''

     l = ["geeks", "for", "geeks"]
 
    for i in l:
    print(i)
          
          '''
          ),

          _normaltext("\nOutput: \n"),
          _CodeArea(
''' 

geeks
for
geeks
  
  '''
          ),







          _boldtext("\n\n2.While Loop : "),
          _normaltext(
'''Python while loop is used to run a block code until a certain condition is met. \n'''
          ),
          _CodeArea(
'''


    while condition:
    # body of while loop
    
    '''
          ),



      _normaltext("\nSample code for while() loop : \n"),
      _CodeArea(
'''
    
   # program to display numbers from 1 to 5

# initialize the variable
i = 1
n = 5

# while loop from i = 1 to 5
while i <= n:
    print(i)
    i = i + 1





'''
        
      ),



      _normaltext("\nOutput : \n"),
      _CodeArea(
        '''

          1
2
3
4
5  '''

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

                _boldtext("Control Flow in pyhton programming"),
                _normaltext(
'''In simple,Control of flow defines as terminatead a loop in compile time at any specific state without complete full iteration of a loop in pyhon,Therea area many flow controller in pyhton,Mostly Contine and Break'''
                ),
                
                _boldtext("\nContinue in pyhton "),
                _normaltext(
'''The continue statement in python language is used to bring the program control to the beginning of the loop. The continue statement skips some lines of code inside the loop and continues with the next iteration. It is mainly used for a condition so that we can skip some code for a particular condition.\n'''
                ),

               

                _CodeArea(
'''


ffor i in range(5):
    if i == 3:
        continue
    print(i)




	
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

   0
  1
  2
  4
    
    
    '''
          ),

          _boldtext("\n\nBreak in pyhhon : "),
          _normaltext(
'''The break in pytho  is a loop control statement that breaks out of the loop when encountered. It can be used inside loops or switch statements to bring the control out of the block. The break statement can only break out of a single loop at a time.\n'''
          ),
          _CodeArea(
'''
  for i in range(5):
    if i == 3:
        break;
    print(i)
'''
          ),




      _normaltext("\nOutput : \n"),
      _CodeArea(
        '''

           0
           1
           2
           '''

      ),
          


    

   
         



          ]),
        ),
      ),
    );
  }
}


















//////////////////////////
/////////////////////////////////////////////
/////////////
///
///
//



class pythonadvancetopicpage extends StatefulWidget {
  const pythonadvancetopicpage({super.key});

  @override
  State<pythonadvancetopicpage> createState() => _pythonadvancetopicpageState();
}

class _pythonadvancetopicpageState extends State<pythonadvancetopicpage> {
  


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
          "Python Advance learning",
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
                        " Python Advance",
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
             customCard("OOP", "Objectect oriented concept in python ",
                (context) => OOP(), context),
             customCard("Class", "Class concept in pyhton",
                (context) => OOP1(), context),
            customCard("Object", "Object concept in python",
                (context) => Object(), context),
            customCard("Encapsulation", "Data Encuapsulation in python",
                (context) => Encapsulation(), context),
            customCard("Abstraction ", "Data abstraction in python",
                (context) => abstraction(), context),
            customCard("Polymorphism ", "overrridng and overloadding in python",
                (context) => Polymorphism(), context),
            customCard("Inheritace ", "Inheitance in python",
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
'''In Python, object-oriented Programming (OOPs) is a programming paradigm that uses objects and classes in programming. It aims to implement real-world entities like inheritance, polymorphisms, encapsulation, etc. in the programming. The main concept of OOPs is to bind the data and the functions that work on that together as a single unit so that no other part of the code can access this data.


Now that we have covered the basic prerequisites, we will move on to the 6 pillars of OOPs which are as follows. But, let us start by learning about the different characteristics of an Object-Oriented Programming Language.

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

                _boldtext("Python Class "),
                _normaltext(
'''
A class is a collection of objects. A class contains the blueprints or the prototype from which the objects are being created. It is a logical entity that contains some attributes and methods. 

To understand the need for creating a class let’s consider an example, let’s say you wanted to track the number of dogs that may have different attributes like breed, and age. If a list is used, the first element could be the dog’s breed while the second element could represent its age. Let’s suppose there are 100 different dogs, then how would you know which element is supposed to be which? What if you wanted to add other properties to these dogs? This lacks organization and it’s the exact need for classes. 

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
          class ClassName:
   # Statement-1
   .
   .
   .
   # Statement-N


     

     
  '''),
                    SizedBox(
              height: 20,
            ),



            _CodeArea(
              '''

# Python3 program to
# demonstrate instantiating
# a class

class Dog:
 
    # A simple class
    # attribute
    attr1 = "mammal"
    attr2 = "dog"
 
    # A sample method
    def fun(self):
        print("I'm a", self.attr1)
        print("I'm a", self.attr2)
 
 
# Driver code
# Object instantiation
Rodger = Dog()
 
# Accessing class attributes
# and method through objects
print(Rodger.attr1)
Rodger.fun()
    
    '''
            ),


            SizedBox(height: 20,),
            _CodeArea(
            '''

                  
                  mammal
                  I'm a mammal
                  I'm a dog
                  
                  '''
            ),
         

         SizedBox(height: 20,),

         _normaltext(
          '''In the above example, an object is created which is basically a dog named Rodger. This class only has two class attributes that tell us that Rodger is a dog and a mamma
          
Explanation :

In this example, we are creating a Dog class and we have created two class variables attr1 and attr2. We have created a method named fun() which returns the string “I’m a, {attr1}” and I’m a, {attr2}. We have created an object of the Dog class and we are printing at the attr1 of the object. Finally, we are calling the fun() function.

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

                _boldtext("Python Objects"),
                _normaltext(
'''
The object is an entity that has a state and behavior associated with it. It may be any real-world object like a mouse, keyboard, chair, table, pen, etc. Integers, strings, floating-point numbers, even arrays, and dictionaries, are all objects. More specifically, any single integer or any single string is an object. The number 12 is an object, the string “Hello, world” is an object, a list is an object that can hold other objects, and so on. You’ve been using objects all along and may not even realize it.

An object consists of:

    State: It is represented by the attributes of an object. It also reflects the properties of an object.

    Behavior: It is represented by the methods of an object. It also reflects the response of an object to other objects.

    Identity: It gives a unique name to an object and enables one object to interact with other objects.
To understand the state, behavior, and identity let us take the example of the class dog (explained above). 

The identity can be considered as the name of the dog.
State or Attributes can be considered as the breed, age, or color of the dog.
The behavior can be considered as to whether the dog is eating or sleeping.


Creating an Object:
This will create an object named obj of the class Dog defined above. Before diving deep into objects and classes let us understand some basic keywords that will we used while working with objects and classes.


              obj = Dog()
              
              
              
'''               ),


                _CodeArea(
'''
     
    class Dog:
 
    # class attribute
    attr1 = "mammal"
 
    # Instance attribute
    def __init__(self, name):
        self.name = name
 
# Driver code
# Object instantiation
Rodger = Dog("Rodger")
Tommy = Dog("Tommy")
 
# Accessing class attributes
print("Rodger is a {}".format(Rodger.__class__.attr1))
print("Tommy is also a {}".format(Tommy.__class__.attr1))
 
# Accessing instance attributes
print("My name is {}".format(Rodger.name))
print("My name is {}".format(Tommy.name))



'''
                ),




               SizedBox(height: 20,),

               _boldtext("output\n"),
               _CodeArea(
'''

    Rodger is a mammal
    Tommy is also a mammal
    My name is Rodger
    My name is Tommy'''
               )
       




         



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

                _boldtext("Python Encapsulation"),
                _normaltext(
'''
Encapsulation is one of the fundamental concepts in object-oriented programming (OOP). It describes the idea of wrapping data and the methods that work on data within one unit. This puts restrictions on accessing variables and methods directly and can prevent the accidental modification of data. To prevent accidental change, an object’s variable can only be changed by an object’s method. Those types of variables are known as private variables.

A class is an example of encapsulation as it encapsulates all the data that is member functions, variables, etc.

>>Technically in encapsulation, the variables or data of a class is hidden from any other class and can be accessed only through any member function of its own class in which it is declared.

>>As in encapsulation, the data in a class is hidden from other classes using the data hiding concept which is achieved by making the members or methods of a class private, and the class is exposed to the end-user or the world without providing any details behind implementation using the abstraction concept, so it is also known as a combination of data-hiding and abstraction.
Encapsulation can be achieved by Declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.

>>It is more defined with the setter and getter method.


Encapsulation in Python:
In the above example, we have created the c variable as the private attribute. We cannot even access this attribute directly and can’t even change its value.
Here’s an example of encapsulation:
\n\n'''
                ),
                
             

              

                _CodeArea(
'''      

# Python program to
# demonstrate private members
 
# Creating a Base class
class Base:
    def __init__(self):
        self.a = "GeeksforGeeks"
        self.__c = "GeeksforGeeks"
 
# Creating a derived class
class Derived(Base):
    def __init__(self):
 
        # Calling constructor of
        # Base class
        Base.__init__(self)
        print("Calling private member of base class: ")
        print(self.__c)
 
 
# Driver code
obj1 = Base()
print(obj1.a)
 
# Uncommenting print(obj1.c) will
# raise an AttributeError
 
# Uncommenting obj2 = Derived() will
# also raise an AtrributeError as
# private member of base class
# is called inside derived class

      
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

                _boldtext("Abstraction in pythbn"),
                _normaltext(
'''

What is Abstraction in python?
In python, abstraction is achieved by interfaces and abstract classes.

Data Abstraction may also be defined as the process of identifying only the required characteristics of an object ignoring the irrelevant details. The properties and behaviors of an object differentiate it from other objects of similar type and also help in classifying/grouping the objects.



Real-Life Example:
Consider a real-life example of a man driving a car. The man only knows that pressing the accelerators will increase the speed of a car or applying brakes will stop the car, but he does not know how on pressing the accelerator the speed is actually increasing, he does not know about the inner mechanism of the car or the implementation of the accelerator, brakes, etc in the car. This is what abstraction is. 




python Abstract classes and python Abstract methods :
  1.An abstract class is a class that is declared with an abstract keyword.
  2.An abstract method is a method that is declared without implementation.
  3.An abstract class may or may not have all abstract methods. Some of them can be concrete methods
  4.A method-defined abstract must always be redefined in the subclass, thus making overriding compulsory or making the subclass itself abstract.
  5.Any class that contains one or more abstract methods must also be declared with an abstract keyword.
  6.There can be no object of an abstract class. That is, an abstract class can not be directly instantiated with the new operator.
  7.An abstract class can have parameterized constructors and the default constructor is always present in an abstract class.



It hides unnecessary code details from the user. Also,  when we do not want to give out sensitive parts of our code implementation and this is where data abstraction came.

Data Abstraction in Python can be achieved by creating abstract classes.

When to use abstract classes and abstract methods:
There are situations in which we will want to define a superclass that declares the structure of a given abstraction without providing a complete implementation of every method. Sometimes we will want to create a superclass that only defines a generalization form that will be shared by all of its subclasses, leaving it to each subclass to fill in the details.






# Data hiding :

In Python, we use double underscore (Or __) before the attributes name and those attributes will not be directly visible outside. 

'''
                ),
              
               

                _CodeArea(
'''
class MyClass:
  
    # Hidden member of MyClass
    __hiddenVariable = 0
    
    # A member method that changes 
    # __hiddenVariable 
    def add(self, increment):
        self.__hiddenVariable += increment
        print (self.__hiddenVariable)
   
# Driver code
myObject = MyClass()     
myObject.add(2)
myObject.add(5)
  
# This line causes error
print (myObject.__hiddenVariable)
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

2
7
Traceback (most recent call last):
  File "filename.py", line 13, in 
    print (myObject.__hiddenVariable)
AttributeError: MyClass instance has 
no attribute '__hiddenVariable' 
    
    
    '''
          ),



          SizedBox(height: 20,),
          _normaltext('''In the above program, we tried to access a hidden variable outside the class using an object and it threw an exception.
We can access the value of a hidden attribute by a tricky synt\n\n'''),
             _CodeArea(
'''

# A Python program to demonstrate that hidden
# members can be accessed outside a class
class MyClass:
  
    # Hidden member of MyClass
    __hiddenVariable = 10
  
# Driver code
myObject = MyClass()     
print(myObject._MyClass__hiddenVariable)



// output 10'''              
             )



             



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

                _boldtext("What is Polymorphism:"),
                _normaltext(
'''
The word polymorphism means having many forms. In programming, polymorphism means the same function name (but different signatures) being used for different types. The key difference is the data types and number of arguments used in function.

Example of inbuilt polymorphic functions:
'''
                ),
                
              

                _CodeArea(
'''
# Python program to demonstrate in-built poly-
# morphic functions
 
# len() being used for a string
print(len("geeks"))
 
# len() being used for a list
print(len([10, 20, 30]))

/
'''
),
          _normaltext(
'''\noutput : \n'''
          ),
          
          _CodeArea(
'''  

 
        5

        3
    '''
          ),


         _boldtext("\n\nExamples of user-defined polymorphic functions: \n"),
         _CodeArea(
'''

# A simple Python function to demonstrate
# Polymorphism
 
def add(x, y, z = 0):
    return x + y+z
 
# Driver code
print(add(2, 3))
print(add(2, 3, 4))



//Output
5
9

'''         
         ),

         SizedBox(height: 20,),
         _boldtext("Polymorphism with class methods: \n\n"),
         _CodeArea(
'''
class India():
    def capital(self):
        print("New Delhi is the capital of India.")
 
    def language(self):
        print("Hindi is the most widely spoken language of India.")
 
    def type(self):
        print("India is a developing country.")
 
class USA():
    def capital(self):
        print("Washington, D.C. is the capital of USA.")
 
    def language(self):
        print("English is the primary language of USA.")
 
    def type(self):
        print("USA is a developed country.")
 
obj_ind = India()
obj_usa = USA()
for country in (obj_ind, obj_usa):
    country.capital()
    country.language()
    country.type()'''
         ),


         SizedBox(height: 20,),

         _CodeArea(
'''

New Delhi is the capital of India.
Hindi is the most widely spoken language of India.
India is a developing country.
Washington, D.C. is the capital of USA.
English is the primary language of USA.
USA is a developed country.

'''
         )
         
        

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

                _boldtext("Inheritance in python"),
                _normaltext(
'''

One of the core concepts in object-oriented programming (OOP) languages is inheritance. It is a mechanism that allows you to create a hierarchy of classes that share a set of properties and methods by deriving a class from another class. Inheritance is the capability of one class to derive or inherit the properties from another class. 

'''              ),
                
                _boldtext("\nBenefits of inheritance are: "),
                _normaltext(
'''

 Inheritance allows you to inherit the properties of a class, i.e., base class to another, i.e., derived class. The benefits of Inheritance in Python are as follows:

  >> It represents real-world relationships well.
  >> It provides the reusability of a code. We don’t have to write the same code again and again. Also, it allows us to add more features to a class without modifying it.
  >> It is transitive in nature, which means that if class B inherits from another class A, then all the subclasses of B would automatically inherit from class A.
  >> Inheritance offers a simple, understandable model structure. 
  >> Less development and maintenance expenses result from an inheritance. 

\n'''
                ),




            _boldtext("Python Inheritance Syntax\n"),

             _normaltext('''
             
             The syntax of simple inheritance in Python is as follows:


                       Class BaseClass:
                                    {Body}
                       Class DerivedClass(BaseClass):
                                    {Body}


             '''),





  _boldtext("Creating a Parent Class\n"),
  _normaltext('''A parent class is a class whose properties are inherited by the child class. Let’s create a parent class called Person which has a Display method to display the person’s information.


\n\n'''),




                _CodeArea(
'''

class Emp(Person):

def Print(self):
	print("Emp class called")
	
Emp_details = Emp("Mayank", 103)

# calling parent class function
Emp_details.Display()

# Calling child class function
Emp_details.Print()


'''
),




_boldtext("\n\nCreating a Child Class\n"),
  _normaltext('''A child class is a class that drives the properties from its parent class. Here Emp is another class that is going to inherit the properties of the Person class(base class).





\n\n'''),




                _CodeArea(
'''

class Emp(Person):

def Print(self):
	print("Emp class called")
	
Emp_details = Emp("Mayank", 103)

# calling parent class function
Emp_details.Display()

# Calling child class function
Emp_details.Print()


'''
),





_boldtext("\n\nExample of Inheritance in Python \n"),
  _normaltext('''Let us see an example of simple Python inheritance in which a child class is inheriting the properties of its parent class. In this example, ‘Person’ is the parent class, and ‘Employee’ is its child class.



\n\n'''),




                _CodeArea(
'''

# A Python program to demonstrate inheritance

# Base or Super class. Note object in bracket.
# (Generally, object is made ancestor of all classes)
# In Python 3.x "class Person" is
# equivalent to "class Person(object)"


class Person(object):

	# Constructor
	def __init__(self, name):
		self.name = name

	# To get name
	def getName(self):
		return self.name

	# To check if this person is an employee
	def isEmployee(self):
		return False


# Inherited or Subclass (Note Person in bracket)
class Employee(Person):

	# Here we return true
	def isEmployee(self):
		return True


# Driver code
emp = Person("Geek1") # An Object of Person
print(emp.getName(), emp.isEmployee())

emp = Employee("Geek2") # An Object of Employee
print(emp.getName(), emp.isEmployee())




//output:
Geek1 False
Geek2 True

'''
), 
         


          ]),
        ),
      ),
    );
  }
}
























