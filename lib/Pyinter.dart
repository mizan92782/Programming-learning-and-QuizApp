


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


class Pyinterpage extends StatefulWidget {
  const Pyinterpage({super.key});

  @override
  State<Pyinterpage> createState() => _PyinterpageState();
}





class _PyinterpageState extends State<Pyinterpage> {
  
  List<QuizQuestion> quizQuestions = [
    QuizQuestion(
      question: "Whatiiiii is iiiithe capital of France?",
      options: ["Paris", "London", "Berlin", "Rome"],
      correctAnswer: "Paris",
    ),
    QuizQuestion(
      question: "Which planet is known as the Red Planet?",
      options: ["Venus", "Jupiter", "Mars", "Saturn"],
      correctAnswer: "Mars",
    ),
    QuizQuestion(
      question: "Who painted the Mona Lisa?",
      options: [
        "Leonardo da Vinci",
        "Vincent van Gogh",
        "Pablo Picasso",
        "Claude Monet"
      ],
      correctAnswer: "Leonardo da Vinci",
    ),
    QuizQuestion(
      question: "What is the tallest mountain in the world?",
      options: [
        "Mount Kilimanjaro",
        "Mount Everest",
        "Mount Fuji",
        "Mount McKinley"
      ],
      correctAnswer: "Mount Everest",
    ),
    QuizQuestion(
      question: "Which country is home to the kangaroo?",
      options: ["Australia", "Brazil", "Canada", "India"],
      correctAnswer: "Australia",
    ),
  ];

  List<String> selectedAnswers = List.filled(5, '');
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
        title: const Text('Quiz App'),
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
                            color: Color.fromARGB(255, 6, 82, 145)),
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
              
                                 launchURLBrowser("https://example1.com");
                                 launchURLBrowser("https://example1.com");
                                },
                  child: const Text("Answer (PDF)")),
                ElevatedButton(
                  child: const Text('Website Link'),
                  onPressed: () {
                    // Implement logic to handle submitted answers
                  },
                ),
              ]),



              
              
              
            ],
          ],
        ),
      ),
    );
  }
}




void launchURLBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
