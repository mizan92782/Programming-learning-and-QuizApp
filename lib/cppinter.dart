


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestion(
      {required this.question,
      required this.options,
      required this.correctAnswer});
}


class Cppinterpage extends StatefulWidget {
  const Cppinterpage({super.key});

  @override
  State<Cppinterpage> createState() => _CppinterpageState();
}

class _CppinterpageState extends State<Cppinterpage> {



  
  List<QuizQuestion> quizQuestions = [


    QuizQuestion(
      question: "Who invented C++",
      options: ["Dennis Ritchie", "Ken Thompson", "Brian Kernighan", "Bjarne Stroustrup"],
      correctAnswer: "Bjarne Stroustrup",
    ),


    QuizQuestion(
      question: " Which of the following is the correct syntax of including a user defined header files in C++?",
      options: ["#include [userdefined]", "#include “userdefined”", "#include <userdefined.h>", "#include <userdefined>"],
      correctAnswer: "#include “userdefined”",
    ),



    QuizQuestion(
      question: "Which of the following is used for comments in C++?",
      options: [
        "both // comment or /* comment */",
        "// comment",
        "// comment */",
        "/* comment */"
      ],
      correctAnswer: "both // comment or /* comment */",
    ),


    QuizQuestion(
      question: "Which of the following user-defined header file extension used in c++?",
      options: [
        "hg",
        "cpp",
        "h",
        "hf"
      ],
      correctAnswer: "h",
    ),




    
    QuizQuestion(
      question: "Which of the following is a correct identifier in C++?",
      options: ["VAR_1234", "!var_name", "7VARNAME", "7var_name"],
      correctAnswer: "VAR_1234",
    ),


//////////////////////


    QuizQuestion(
      question: "Which of the following approach is used by C++?",
      options: ["Left-right", "Right-left", "Top-down", "Bottom-up"],
      correctAnswer: "Bottom-up",
    ),


    
    QuizQuestion(
      question: "By default, all the files in C++ are opened in _________ mode.",
      options: ["Binary", "VTC", "Text", "ISCII"],
      correctAnswer: "Text",
    ),


    QuizQuestion(
      question: "Which of the following correctly declares an array in C++?",
      options: ["array{10}", "array array[10]", "int array", "nt array[10]"],
      correctAnswer: "int array[10];",
    ),
    QuizQuestion(
      question: "What is the size of wchar_t in C++?",
      options: ["Based on the number of bits in the system", "2 or 4", "4", "2"],
      correctAnswer: "2 or 4",
    ),
    QuizQuestion(
      question: "Which is more effective while calling the C++ functions?",
      options: ["call by pointer", "call by reference", "call by value", "call by pointer"],
      correctAnswer: "call by reference",
    ),
    










  ];

  List<String> selectedAnswers = List.filled(10, '');
  var totalScore=0;
  bool isSubmitted = false;
  var selectedIndex = 0;
  

  void submitQuiz() {
    
    int score = 0;
    for (int i = 0; i < quizQuestions.length; i++) {
      if (selectedAnswers[i] == quizQuestions[i].correctAnswer) {
        score++;
      }
    }

    setState(() {
      totalScore = score;
       isSubmitted = true;
    });

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Color.fromARGB(255, 7, 111, 197),
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
                    child: Text('OK'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C++ Basic Mcq'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            for (int i = 0; i < quizQuestions.length; i++) ...[
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q${i + 1}: ${quizQuestions[i].question}',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent)
                      ),
                      const SizedBox(height: 10),
                      for (int j = 0;
                          j < quizQuestions[i].options.length;
                          j++) ...[
                        RadioListTile(
                          title: Text(quizQuestions[i].options[j]),
                          value: quizQuestions[i].options[j],
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
              height: 50,
              
              child: ElevatedButton(
                
                 
              
              child: const Text('Submit'),
              onPressed: () {
                submitQuiz();
              },
            ),
            ),







            const SizedBox(height: 40),

            
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
                    color: Colors.blue,)
              ),


                  )
                ],
              ),
              
              const SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton(
                   onPressed: () {
                               launch("https://drive.google.com/file/d/1raj-oPMfoHa0b4L5DuF6OJx5cT92Lf1O/view?usp=sharing");
                                 
                                },
                  child: const Text("Answer (PDF)")),


                ElevatedButton(
                  child: const Text('Website Link'),
                  onPressed: () {

                    launch("https://www.sanfoundry.com/cplusplus-interview-questions-answers/");
                  },
                ),
              ]),


              const SizedBox(height: 80),
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
              
              
              
            ],
          ],
        ),
      ),
    );
  }
}


