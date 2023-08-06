import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestion({required this.question, required this.options, required this.correctAnswer});
}











class CbasicQuizpage extends StatefulWidget {
  @override
  _CbasicQuizpageState createState() => _CbasicQuizpageState();
}

class _CbasicQuizpageState extends State<CbasicQuizpage> {



  
  List<QuizQuestion> quizQuestions = [


    QuizQuestion(
      question: "Who is the father of C language?",
      options: ["Steve Jobs", "James Gosling", "Dennis Ritchie", "Rasmus Lerdorf"],
      correctAnswer: "Dennis Ritchie",
    ),


    QuizQuestion(
      question: " scanf() is a predefined function in______header file.",
      options: ["stdlib. h", "stdio.h", "ctype", "stdarg.h"],
      correctAnswer: "stdio.h",
    ),



    QuizQuestion(
      question: "What is the sizeof(char) in a 32-bit C compiler?",
      options: ["1 bit", "2 bits", "1 Byte","2 Bytes"],
      correctAnswer: "1 Byte",
    ),



    QuizQuestion(
      question: "In C language, FILE is of which data type?",
      options: ["int ", "char* ", "struct", "None of the mentioned"],
      correctAnswer: "struct",
    ),





    QuizQuestion(
      question: "The standard header _______ is used for variable list arguments (…) in C.",
      options: ["<stdio.h >", "<stdlib.h>", "<math.h>", "<stdarg.h>"],
      correctAnswer: "<stdarg.h>",
    ),


//--------------------



    QuizQuestion(
      question: "How many number of pointer (*) does C have against a pointer variable declaration?",
      options: ["7", "127", "255", "No limit"],
      correctAnswer: "No limit",
    ),


    QuizQuestion(
      question: "The C-preprocessors are specified with _________ symbol.",
      options: ["#", "&", "@", "*"],
      correctAnswer: "#",
    ),



    QuizQuestion(
      question: "Which of the following are C preprocessors?",
      options: ["#ifdef", "#define", "#endif", "all of the mentioned"],
      correctAnswer: "all of the mentioned",
    ),


    QuizQuestion(
      question: "C preprocessors can have compiler specific features.",
      options: ["True", "False", "Depends on the standard","Depends on the platform"],
      correctAnswer: "True",
    ),


    QuizQuestion(
      question: "What is #include <stdio.h>?",
      options: ["Preprocessor directive", "Inclusion directive", "File inclusion directive", "None of the mentioned"],
      correctAnswer: "Preprocessor directive",
    ),

      //10

    QuizQuestion(
      question: '''What is the output of the following code snippet?

int main() {
	int sum = 2 + 4 / 2 + 6 * 2;
	printf("%d", sum);
	return 0;
}''',
      options: ["2", "15", "16", "18"],
      correctAnswer: "16",
    ),

    QuizQuestion(
      question: '''What will be the output of the following code snippet?

#include <stdio.h>
int main() {
	int a = 3, b = 5;
	int t = a;
	a = b;
	b = t;
	printf("%d %d", a, b);
	return 0;
}''',
      options: ["3 5", "3 3", "5 5", " 5 3"],
      correctAnswer: "5 3",
    ),

    QuizQuestion(
      question: '''What does the following declaration indicate?

int x: 8;''',
      options: ["x stores a value of 8", "x is an 8 bit integer", "Both A and B", "None of the mentioned"],
      correctAnswer: "x is an 8 bit integer",
    ),


    QuizQuestion(
      question: "What is the size of the int data type (in bytes) in C?",
      options: ["4", "8", "2", "1"],
      correctAnswer: "4",
    ),

    QuizQuestion(
      question: "Which of the following cannot be a variable name in C?",
      options: ["volatile", "true", "friend", "export"],
      correctAnswer: "volatile",
    ),









  ];




  List<QuizQuestion>answer=[];
  List<int>find=[];


  int count=0;

  var random=0;



void randomlyselectQuiz()
{
     

     while(count!=5)
     {

         random=Random().nextInt(quizQuestions.length);
         if(find[random]==1)
         { 
          continue;

         }else{
            find[random]=1;
            count=count+1;
            answer.add(quizQuestions[random]);
         }
          
     }

}

@override
  void initState() {
    super.initState();
     find=List.filled(quizQuestions.length,0);
     randomlyselectQuiz();
     selectedAnswers =List.filled(answer.length, '');
    
  }
    
 

  List<String> selectedAnswers =[] ;
  int totalScore = 0;
  bool isSubmitted=false;
   var selectedIndex = 0;
   bool seeanswer=false;

   

  
  void submitQuiz() {
    int score = 0;
    for (int i = 0; i <answer.length; i++) {
      if (selectedAnswers[i] == answer[i].correctAnswer) {
        score++;
      }
    }
    setState(() {
      totalScore = score;
      isSubmitted=true;
     
     
    
    });



   showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: const Color.fromARGB(255, 7, 111, 197),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Quiz Results',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Your Score: $totalScore',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'You have completed the quiz.',
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );








  }




Widget _answidget()
{
    return Container(
         child:Column(children: [

            const Center(
              child: Text("Answer",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
           for(int i=0;i<answer.length;i++)...[
               Card(
                child: ListTile(
                  title: Text("Q$i.${answer[i].question}",style: const TextStyle(fontWeight:FontWeight.bold),),
                  subtitle: Text("Ans :${answer[i].correctAnswer}",style: TextStyle(fontWeight:FontWeight.bold),),)
               )

           ]
           
         ]) ,
    );

     
}

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('C Basic Mcq'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),

          
            


            for (int i = 0; i < answer.length; i++) ...[
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q${i + 1}: ${answer[i].question}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent),
                       
                      ),
                      SizedBox(height: 10),
                      for (int j = 0; j < answer[i].options.length; j++) ...[
                        RadioListTile(
                          title: Text(answer[i].options[j]),
                          value: answer[i].options[j],
                          groupValue: selectedAnswers[i],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[i] = value.toString();
                            });
                          },
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],


            const SizedBox(height: 16),
           
          
            

            Container(
              color: Colors.indigoAccent,

              height: 50,
              
              child: ElevatedButton(
                
                 
              
              child: const Text('Submit'),
              onPressed: () {
                submitQuiz();
                 setState(() {
                      seeanswer=true;
                   });
              },
            ),
            ),





            if (isSubmitted) ...[
              const SizedBox(height: 40),
              Column(
                children: [
                  Center(child:Text(
                'Total Score: $totalScore',
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: AutofillHints.birthdayYear,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
              ),


                  )
                ],
              ),
              
             




              const SizedBox(height: 80),


                if(seeanswer=true)...[
                   _answidget(),
                ],





                 const SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                
                ElevatedButton(
                  
                  
                   onPressed: () {
                  
                     launch('https://www.sanfoundry.com/c-interview-questions-answers/');
                                },
                  child: const Text("More Question")),


              

              ]),

                const SizedBox(height: 40),



              Column(
                children: [
                  BottomNavigationBar(
                      backgroundColor: Colors.indigoAccent,
                      unselectedItemColor:
                          Colors.white, // Set the color for unselected icons
                      selectedItemColor: Color.fromARGB(255, 17, 65, 208),
                      currentIndex: selectedIndex,
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline ), label: "profile"),
                        
                      ],
                      onTap: (value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      })
                ],
              )












            ]
          ],
        ),



        






        
      ),
    );
  }
}
















/////////////////////////////////////////////////////
///////////////////////////////////////////////////
////////////////////////////////////////////////











class CinterQuizpage extends StatefulWidget {
  @override
  _CinterQuizpageState createState() => _CinterQuizpageState();
}

class _CinterQuizpageState extends State<CinterQuizpage> {



  
  List<QuizQuestion> quizQuestions = [


    QuizQuestion(
      question: '''What is the output of the C statement.?
int main()
{
    int a=0;
    a = 5<2 ? 4 : 3;
    printf("%d",a);

    return 0;
}''',
      options: ["4", "3", "5", "1"],
      correctAnswer: "3",
    ),


    QuizQuestion(
      question:'''What is the output of C Program.?
int main()
{
    int a=0;
    a = printf("4");
    printf("%d",a);

    return 0;
}''',
      options: ["Compiler error", "04", "40", "41"],
      correctAnswer: "41",
    ),



    QuizQuestion(
      question: '''What is the output of the C Program.?
int main()
{
    int a=0;
    a = (5>2) ? : 8;
    printf("%d",a);

    return 0;
}''',
      options: ["1", "0", "8","Compiler error"],
      correctAnswer: "1",
    ),



    QuizQuestion(
      question:'''What is the output of C Program.?
int main()
{
    int a=0, b;
    a = (5>2) ? b=6: b=8;
    printf("%d %d",a, b);

    return 0;
}''',
      options: ["6 6", "0 6", "0 8", "Compiler error"],
      correctAnswer: "Compiler error",
    ),





    QuizQuestion(
      question: '''What is the output of the C Program.?
int main()
{
    if( 10 < 9 )
        printf("Hurray..\n");
    else if(4 > 2)
        printf("England");

    return 0;
}''',
      options: ["England", " Hurray..", "Compiler error for missing else", "None of the above"],
      correctAnswer: "England",
    ),


//--------------------



    QuizQuestion(
      question: '''What is the output of C Program.?
int main()
{
    int a=25;
    
    while(a <= 27)
    {
        printf("%d ", a);
        a++;
    }

    return 0;
}''',
      options: ["25 25 25", "25 26 27", "27 27 27", "Compiler error"],
      correctAnswer: "25 26 27",
    ),


    QuizQuestion(
      question: '''What is the output of C Program.?
int main()
{
    int a=32;
    
    do
    {
        printf("%d ", a);
        a++;
    }while(a <= 30);

    return 0;
}''',
      options: ["32", "33", "30", "No output"],
      correctAnswer: "32",
    ),



    QuizQuestion(
      question: '''What is the output of C Program.?
int main()
{
    int k, j;
    
    for(k=1, j=10; k <= 5; k++)
    {
        printf("%d ", (k+j));
    }

    return 0;
}''',
      options: ["#compiler error", "10 10 10 10 10", "11 12 13 14 15", "None of the above"],
      correctAnswer: "11 12 13 14 15",
    ),


    QuizQuestion(
      question: '''What is the output of C Program.?
int main()
{
    int k;
    
    for(k=1; k <= 5; k++);
    {
        printf("%d ", k);
    }

    return 0;
}''',
      options: ["1 2 3 4 5", "1 2 3 4","6","5"],
      correctAnswer: "6",
    ),


    QuizQuestion(
      question: "Loops in C Language are implemented using.?",
      options: ["While Block", "For Block", "Do While Block", "All the above"],
      correctAnswer: "All the above",
    ),

      //1/////////0

    QuizQuestion(
      question: '''What is the output of C Program with switch statement.?
int main()
{
    int a=3;
    
    switch(a)
    {
        case 2: printf("ZERO "); break;

        case default: printf("RABBIT ");
    }
    
}''',
      options: ["RABBIT", "ZERO RABBIT", "No output", "Compiler error"],
      correctAnswer: "Compiler error",
    ),

    QuizQuestion(
      question: '''What is the output of C Program with switch statement or block.?
int main()
{
    int a=3;
    
    switch(a)
    {

    }
    
    printf("MySwitch");
}''',
      options: ["MySwitch", "No Output", "Compiler Error", " 5 3"],
      correctAnswer: "None of the above",
    ),

    QuizQuestion(
      question: '''What is the output of C Program with switch statement or block.?
int main()
{
    int a;
    
    switch(a)
    {
        printf("APACHE ");
    }
    
    printf("HEROHONDA");
''',
      options: ["APACHE HEROHONDA", "HEROHONDA", "No Output", "Compiler error"],
      correctAnswer: "HEROHONDA",
    ),


    QuizQuestion(
      question: '''What is the output of C Program.?
int main()
{
    int a=5;
    
    while(a==5)    
    {
        printf("RABBIT");
        break;
    }

    return 0;
}''',
      options: ["RABBIT is printed unlimited number of times", "RABBIT", "Compiler error", "None of the above."],
      correctAnswer: "RABBIT",
    ),

    QuizQuestion(
      question: '''What is the output of C Program.?
int main()
{
    int a=5;
    
    while(a!=123)    
    {
        printf("RABBIT\n");
        break;
    }
    printf("GREEN");
    
    return 0;
}''',
      options: ["GREEN", "RABBIT GREEN", "RABBIT is printed unlimited number of times.", "Compiler error."],
      correctAnswer: "RABBIT is printed unlimited number of times.",
    ),









  ];




  List<QuizQuestion>answer=[];
  List<int>find=[];
  
  int count=0;

  var random=0;

  List<String> selectedAnswers =[] ;
  int totalScore = 0;
  bool isSubmitted=false;
   var selectedIndex = 0;
   bool seeanswer=false;




void randomlyselectQuiz()
{
     

     while(count!=5)
     {

         random=Random().nextInt(quizQuestions.length);
         if(find[random]==1)
         { 
          continue;

         }else{
            find[random]=1;
            count=count+1;
            answer.add(quizQuestions[random]);
         }
          
     }

}


@override
  void initState() {
    super.initState();
     find=List.filled(quizQuestions.length,0);
      randomlyselectQuiz();
     selectedAnswers =List.filled(answer.length, '');
   
  }
    
 

  
   

  
  void submitQuiz() {
    int score = 0;
    for (int i = 0; i < answer.length; i++) {
      if (selectedAnswers[i] == answer[i].correctAnswer) {
        score++;
      }
    }
    setState(() {
      totalScore = score;
      isSubmitted=true;
     
     
    
    });



   showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: const Color.fromARGB(255, 7, 111, 197),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Quiz Results',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Your Score: $totalScore',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'You have completed the quiz.',
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );








  }




Widget _answidget()
{
    return Container(
         child:Column(children: [

            const Center(
              child: Text("Answer",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
           for(int i=0;i<answer.length;i++)...[
               Card(
                child: ListTile(
                  title: Text("Q$i.${answer[i].question}",style: const TextStyle(fontWeight:FontWeight.bold),),
                  subtitle: Text("Ans :${answer[i].correctAnswer}",style: TextStyle(fontWeight:FontWeight.bold),),)
               )

           ]
           
         ]) ,
    );

     
}

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('C Intermediant Mcq'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),

          
            


            for (int i = 0; i < answer.length; i++) ...[
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q${i + 1}: ${answer[i].question}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent),
                       
                      ),
                      SizedBox(height: 10),
                      for (int j = 0; j < answer[i].options.length; j++) ...[
                        RadioListTile(
                          title: Text(answer[i].options[j]),
                          value: answer[i].options[j],
                          groupValue: selectedAnswers[i],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[i] = value.toString();
                            });
                          },
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],


            const SizedBox(height: 16),
           
          
            

            Container(
              color: Colors.indigoAccent,

              height: 50,
              
              child: ElevatedButton(
                
                 
              
              child: const Text('Submit'),
              onPressed: () {
                submitQuiz();
                 setState(() {
                      seeanswer=true;
                   });
              },
            ),
            ),





            if (isSubmitted) ...[
              const SizedBox(height: 40),
              Column(
                children: [
                  Center(child:Text(
                'Total Score: $totalScore',
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: AutofillHints.birthdayYear,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
              ),


                  )
                ],
              ),
              
             




              const SizedBox(height: 80),


                if(seeanswer=true)...[
                   _answidget(),
                ],





                 const SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                
                ElevatedButton(
                  
                  
                   onPressed: () {
                  
                     launch('https://www.sanfoundry.com/c-interview-questions-answers/');
                                },
                  child: const Text("More Question")),


              

              ]),

                const SizedBox(height: 40),



              Column(
                children: [
                  BottomNavigationBar(
                      backgroundColor: Colors.indigoAccent,
                      unselectedItemColor:
                          Colors.white, // Set the color for unselected icons
                      selectedItemColor: Color.fromARGB(255, 17, 65, 208),
                      currentIndex: selectedIndex,
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline ), label: "profile"),
                        
                      ],
                      onTap: (value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      })
                ],
              )












            ]
          ],
        ),



        






        
      ),
    );
  }
}














/////////////////////////////////////////
///\\\\\\\\\\\\\\\\\\\\\\\\\\\
///\\\\\\\\\\\
///
///
///
///
///
///
///
///





class CadvanceQuizpage extends StatefulWidget {
  @override
  _CadvanceQuizpageState createState() => _CadvanceQuizpageState();
}

class _CadvanceQuizpageState extends State<CadvanceQuizpage> {



  
  List<QuizQuestion> quizQuestions = [


    QuizQuestion(
      question: '''What is a String in C Language.?''',
      options: ["String is a new Data Type in C", "String is an array of Characters with null character as the last element of array.", "String is an array of Characters with null character as the first element of array", "String is an array of Integers with 0 as the last element of array"],
      correctAnswer: "String is an array of Characters with null character as the last element of array",
    ),


    QuizQuestion(
      question:'''What is the Format specifier used to print a String or Character array in C Printf or Scanf function.?''',
      options: ["%c", "%C", "%s", "%w"],
      correctAnswer: "%s",
    ),



    QuizQuestion(
      question: '''What is the output of C Program with Strings.?

int main()
{
    char str[]={'g','l','o','b','e'};
    printf("%s",str);
    return 0;
}
''',
      options: ["g", "global", "global\0","None of them"],
      correctAnswer: "None of them",
    ),



    QuizQuestion(
      question:'''How do you convert this char array to string.?

      char str[]={'g','l','o','b','y'};

''',
      options: ["str[5] = 0;", "str[5] = '\0'", "str[]={'g','l','o','b','y','\0'};", "All the above"],
      correctAnswer: "All the above",
    ),





    QuizQuestion(
      question: '''What is the output of the C Program.?
int main()
{
    if( 10 < 9 )
        printf("Hurray..\n");
    else if(4 > 2)
        printf("England");

    return 0;
}''',
      options: ["England", " Hurray..", "Compiler error for missing else", "None of the above"],
      correctAnswer: "England",
    ),


//--------------------



    QuizQuestion(
      question: '''What is an Array in C language.?''',
      options: ["A group of elements of same data type", "An array contains more than one element", "Array elements are stored in memory in continuous or contiguous locations", "All the above."],
      correctAnswer: "All the above.",
    ),


    QuizQuestion(
      question: '''An array Index starts with.?''',
      options: ["-1", "0", "1", "2"],
      correctAnswer: "0",
    ),



    QuizQuestion(
      question: '''What is the output of C Program.? 

      int main() 
      {  
        int a[]; 
        a[4] = {1,2,3,4}; 
        printf("%d", a[0]);
      
      }
         
         ''',
      options: ["1", "2", "4", "Compiler error"],
      correctAnswer: "Compiler error",
    ),


    QuizQuestion(
      question: '''What is the output of C Program.? 
        int main() 
          { 
             int a[] = {1,2,3,4}; 
             int b[4] = {5,6,7,8};
              printf("%d,%d", a[0], b[0]);
           }
           
           ''',
      options: ["1,5", "2,5","3,6","Compiler error"],
      correctAnswer: "1,5",
    ),


    QuizQuestion(
      question: "What is a structure in C language.?",
      options: ["A structure is a collection of elements that can be of same data type", "A structure is a collection of elements that can be of different data type", "Elements of a structure are called members.", "All the above"],
      correctAnswer: "All the above",
    ),

      //1/////////0

    QuizQuestion(
      question: '''What is the output of C program with structures.?

int main()
{
    structure hotel
    {
        int items;
        char name[10];
    }a;
    strcpy(a.name, "TAJ");
    a.items=10;
    printf("%s", a.name);
    return 0;
}''',
      options: ["TAJ", "Empty string", "Compiler error", "None of the above"],
      correctAnswer: "Compiler error",
    ),

    QuizQuestion(
      question: '''What is the output of C Program with switch statement or block.?
int main()
{
    int a=3;
    
    switch(a)
    {

    }
    
    printf("MySwitch");
}''',
      options: ["MySwitch", "No Output", "Compiler Error", " 5 3"],
      correctAnswer: "None of the above",
    ),

    QuizQuestion(
      question: '''What is the output of C Program with switch statement or block.?
int main()
{
    int a;
    
    switch(a)
    {
        printf("APACHE ");
    }
    
    printf("HEROHONDA");
''',
      options: ["APACHE HEROHONDA", "HEROHONDA", "No Output", "Compiler error"],
      correctAnswer: "HEROHONDA",
    ),


    QuizQuestion(
      question: '''What is the output of C program with structure array pointers.?
int main()
{
    struct car
    {
        int km;
    }*p1[2];
    struct car c1={1234};
    p1[0]=&c1;
    printf("%d ",p1[0]->km);
    return 0;
}''',
      options: ["1", "1234", "Compiler error", "0"],
      correctAnswer: "1234",
    ),

    QuizQuestion(
      question: '''What is the output of C Program.?
int main()
{
    int a=5;
    
    while(a!=123)    
    {
        printf("RABBIT\n");
        break;
    }
    printf("GREEN");
    
    return 0;
}''',
      options: ["GREEN", "RABBIT GREEN", "RABBIT is printed unlimited number of times.", "Compiler error."],
      correctAnswer: "RABBIT is printed unlimited number of times.",
    ),









  ];




  List<QuizQuestion>answer=[];
  List<int>find=[];
  
  int count=0;

  var random=0;

  List<String> selectedAnswers =[] ;
  int totalScore = 0;
  bool isSubmitted=false;
   var selectedIndex = 0;
   bool seeanswer=false;




void randomlyselectQuiz()
{
     

     while(count!=5)
     {

         random=Random().nextInt(quizQuestions.length);
         if(find[random]==1)
         { 
          continue;

         }else{
            find[random]=1;
            count=count+1;
            answer.add(quizQuestions[random]);
         }
          
     }

}


@override
  void initState() {
    super.initState();
     find=List.filled(quizQuestions.length,0);
      randomlyselectQuiz();
     selectedAnswers =List.filled(answer.length, '');
   
  }
    
 

  
   

  
  void submitQuiz() {
    int score = 0;
    for (int i = 0; i < answer.length; i++) {
      if (selectedAnswers[i] == answer[i].correctAnswer) {
        score++;
      }
    }
    setState(() {
      totalScore = score;
      isSubmitted=true;
     
     
    
    });



   showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: const Color.fromARGB(255, 7, 111, 197),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Quiz Results',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Your Score: $totalScore',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'You have completed the quiz.',
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );








  }




Widget _answidget()
{
    return Container(
         child:Column(children: [

            const Center(
              child: Text("Answer",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20,),
           for(int i=0;i<answer.length;i++)...[
               Card(
                child: ListTile(
                  title: Text("Q$i.${answer[i].question}",style: const TextStyle(fontWeight:FontWeight.bold),),
                  subtitle: Text("Ans :${answer[i].correctAnswer}",style: TextStyle(fontWeight:FontWeight.bold),),)
               )

           ]
           
         ]) ,
    );

     
}

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('C advance Mcq'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),

          
            


            for (int i = 0; i < answer.length; i++) ...[
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q${i + 1}: ${answer[i].question}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent),
                       
                      ),
                      SizedBox(height: 10),
                      for (int j = 0; j < answer[i].options.length; j++) ...[
                        RadioListTile(
                          title: Text(answer[i].options[j]),
                          value: answer[i].options[j],
                          groupValue: selectedAnswers[i],
                          onChanged: (value) {
                            setState(() {
                              selectedAnswers[i] = value.toString();
                            });
                          },
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],


            const SizedBox(height: 16),
           
          
            

            Container(
              color: Colors.indigoAccent,

              height: 50,
              
              child: ElevatedButton(
                
                 
              
              child: const Text('Submit'),
              onPressed: () {
                submitQuiz();
                 setState(() {
                      seeanswer=true;
                   });
              },
            ),
            ),





            if (isSubmitted) ...[
              const SizedBox(height: 40),
              Column(
                children: [
                  Center(child:Text(
                'Total Score: $totalScore',
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: AutofillHints.birthdayYear,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)
              ),


                  )
                ],
              ),
              
             




              const SizedBox(height: 80),


                if(seeanswer=true)...[
                   _answidget(),
                ],





                 const SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                
                ElevatedButton(
                  
                  
                   onPressed: () {
                  
                     launch('https://www.sanfoundry.com/c-interview-questions-answers/');
                                },
                  child: const Text("More Question")),


              

              ]),

                const SizedBox(height: 40),



              Column(
                children: [
                  BottomNavigationBar(
                      backgroundColor: Colors.indigoAccent,
                      unselectedItemColor:
                          Colors.white, // Set the color for unselected icons
                      selectedItemColor: Color.fromARGB(255, 17, 65, 208),
                      currentIndex: selectedIndex,
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person_outline ), label: "profile"),
                        
                      ],
                      onTap: (value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      })
                ],
              )












            ]
          ],
        ),



        






        
      ),
    );
  }
}










