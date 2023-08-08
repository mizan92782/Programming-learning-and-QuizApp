import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestion({required this.question, required this.options, required this.correctAnswer});
}











class AlgobasicQuizpage extends StatefulWidget {
  @override
  _AlgobasicQuizpageState createState() => _AlgobasicQuizpageState();
}

class _AlgobasicQuizpageState extends State<AlgobasicQuizpage> {



  
  List<QuizQuestion> quizQuestions = [


    QuizQuestion(
      question: "An ___ is defined as a set of well-defined instructions used to accomplish a particular task.",
      options: ["Algorithm", "Procedure", "Function", "Program"],
      correctAnswer: "Algorithm",
    ),


    QuizQuestion(
      question: "The measure of the longest amount of time possibly taken to complete an algorithm is expressed as __.",
      options: ["Little-O", "Little-Omega", "Big-Omega", "Big-O"],
      correctAnswer: "Big-O",
    ),



    QuizQuestion(
      question: "A ___ is a compact, informal, and environment-independent description of a computer programming algorithm",
      options: ["Stack", " Queue", "Psuedocode","Non-linear data structure"],
      correctAnswer: "Non-linear data structure",
    ),



    QuizQuestion(
      question: "___ of an algorithm is the amount of time required for it to execute.",
      options: ["Time complexity", "Space complexity", "Compiling time", "Best case"],
      correctAnswer: "Time complexity",
    ),





    QuizQuestion(
      question: "Potential function method is the technique that performs an amortized analysis based on ___.",
      options: ["Financial model", "Computational model", "Algorithm analysis", "Energy model"],
      correctAnswer: "Energy model",
    ),


//--------------------



    QuizQuestion(
      question: " ___ is the maximum amount of time an algorithm takes to execute a specific set of inputs.",
      options: ["Running time", "Average case time complexity", "Worst case time complexity", "Best case time complexity"],
      correctAnswer: "Worst case time complexity",
    ),


    QuizQuestion(
      question: " ___ within the limit deals with the behavior of a function for sufficiently large values of its parameter.",
      options: ["Asymptotic notation", "Big-Oh notation", "Omega notation", "Theta notation"],
      correctAnswer: "Asymptotic notation",
    ),



    QuizQuestion(
      question: "Which one of the following helps in calculating the longest amount of time taken for the completion of the algorithm?",
      options: ["Theta notation", "Big-Oh notation", "Omega notation", "Time complexity"],
      correctAnswer: "Big-Oh notation",
    ),


    QuizQuestion(
      question: "In algorithm visualization of bubble sort algorithm the non-linear curve of the sorted elements is close to ___.",
      options: ["3n", "n3", "2n","n2"],
      correctAnswer: "n2",
    ),


    QuizQuestion(
      question: "What is #include <stdio.h>?",
      options: ["Preprocessor directive", "Inclusion directive", "File inclusion directive", "None of the mentioned"],
      correctAnswer: "Preprocessor directive",
    ),

      //10

    QuizQuestion(
      question: ''' The recursive versions of binary search use a ___ structure.''',
      options: ["Branch and bound", "Dynamic programming", "Divide and conquer", "Simple recursive"],
      correctAnswer: "Dynamic programming",
    ),

    QuizQuestion(
      question: '''What is the mode for the following set numbers? 10,12,8,4,10, 6, 10,11,11,10,12''',
      options: ["11", "12", "10", "9"],
      correctAnswer: "10",
    ),

    QuizQuestion(
      question: '''The number of key comparisons in the worst case while forming a heap is using an array of n elements is ___.''',
      options: ["nlog2(n+1)", "2(nlog(n+1))", "2(n-1)log2(n+1)", "2(n-log2(n+1))"],
      correctAnswer: "2(n-log2(n+1))",
    ),


    QuizQuestion(
      question: "The binomial coefficient is represented as ___.",
      options: ["kCn", "nCk", "n+1Ck", "nCk+1"],
      correctAnswer: "nCk",
    ),

    QuizQuestion(
      question: "The best possible value of the problem objective, written as a function of the state, is called the ___.",
      options: ["Value function", "Control variables", "Policy function", "Principle of Optimality"],
      correctAnswer: "Value function",
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
        title: Text('Algo Basic quiz'),
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
                  
                     launch('https://www.eguardian.co.in/design-and-analysis-of-algorithms-mcq-with-answers-pdf/');
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











class AlgointerQuizpage extends StatefulWidget {
  @override
  _AlgointerQuizpageState createState() => _AlgointerQuizpageState();
}

class _AlgointerQuizpageState extends State<AlgointerQuizpage> {



  
  List<QuizQuestion> quizQuestions = [


    QuizQuestion(
      question: '''What is an external sorting algorithm?''',
      options: ["Algorithm that uses tape or disk during the sort", "Algorithm that uses main memory during the sort", "Algorithm that involves swapping", "Algorithm that are considered ‘in place’"],
      correctAnswer: "Algorithm that uses tape or disk during the sort",
    ),


    QuizQuestion(
      question:'''What is the worst case complexity of bubble sort?''',
      options: ["O(nlogn)", "O(logn)", " O(n)", "O(n2)"],
      correctAnswer: "O(n2)",
    ),



    QuizQuestion(
      question: '''What is the average case complexity of bubble sort?''',
      options: ["O(nlogn)", "O(logn)", "O(n)","O(n2)"],
      correctAnswer: "O(n2)",
    ),



    QuizQuestion(
      question:'''The given array is arr = {1, 2, 4, 3}. Bubble sort is used to sort the array elements. How many iterations will be done to sort the array?''',
      options: ["4", "2", "1", "0"],
      correctAnswer: "4",
    ),





    QuizQuestion(
      question: '''Where is linear searching used?''',
      options: ["When the list has only a few elements", "When performing a single search in an unordered list", "Used all the time", "When the list has only a few elements and When performing a single search in an unordered list"],
      correctAnswer: "When the list has only a few elements and When performing a single search in an unordered list",
    ),


//--------------------



    QuizQuestion(
      question: '''Recursion is similar to which of the following?''',
      options: ["Switch Case", "Loop", "If-else", "if elif else"],
      correctAnswer: "loop",
    ),


    QuizQuestion(
      question: ''' In recursion, the condition for which the function will stop calling itself is ____________
''',
      options: ["Best case", "Worst case", "Base case", "There is no such condition"],
      correctAnswer: "Base case",
    ),



    QuizQuestion(
      question: '''What is the output of the following code?


void my_recursive_function(int n)
{
    if(n == 0)
    return;
    printf("%d ",n);
    my_recursive_function(n-1);
}
int main()
{
    my_recursive_function(10);
    return 0;
}

''',
      options: ["10", "1", "10 9 8 … 1 0", "10 9 8 … 1"],
      correctAnswer: "10 9 8 … 1",
    ),


    QuizQuestion(
      question: '''If several elements are competing for the same bucket in the hash table, what is it called?''',
      options: ["Diffusion", "Replication","Collision","Duplication"],
      correctAnswer: "Collision",
    ),


    QuizQuestion(
      question: "What is direct addressing?",
      options: ["Distinct array position for every possible key", "Fewer array positions than keys", "Fewer keys than array positions", "Same array position for all keys"],
      correctAnswer: "Distinct array position for every possible key",
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





class AlgoadvanceQuizpage extends StatefulWidget {
  @override
  _AlgoadvanceQuizpageState createState() => _AlgoadvanceQuizpageState();
}

class _AlgoadvanceQuizpageState extends State<AlgoadvanceQuizpage> {



  
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










