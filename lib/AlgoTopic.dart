import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cquiz.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';


class Algobasictopic extends StatefulWidget {
  const Algobasictopic({super.key});

  @override
  State<Algobasictopic> createState() => _AlgobasictopicState();
}

class _AlgobasictopicState extends State<Algobasictopic> {
  
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
          "Algorithm Basic",
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
                        "Algorithm  Basic",
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
            customCard("Introduction", "What is algorithm",
                (context) => const Introduction(), context),
            customCard("Classification", "Types of algorithm",
                (context) => const Classification(), context),
                 customCard("Complexity", "Complexity Notation",
                (context) => const Complexity(), context),
            customCard("Design", "Algorithm Design Technique",
                (context) => Design(), context),
           
            customCard("Analysis", "Importance of algorithm Analysis",
                (context) => Analysis(), context),
           
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






class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  
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
        title: const Text("Introduction "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is algorithm"),
                _normaltext(

'''The word Algorithm means ” A set of finite rules or instructions to be followed in calculations or other problem-solving operations ” Or ” A procedure for solving a mathematical problem in a finite number of steps that frequently involves recursive operations”.\n
Therefore Algorithm refers to a sequence of finite steps to solve a particular problem.'''                ),

                
               _boldtext("\nUse of the Algorithms"),
               _normaltext('''Algorithms play a crucial role in various fields and have many applications. Some of the key areas where algorithms are used include:

Computer Science: Algorithms form the basis of computer programming and are used to solve problems ranging from simple sorting and searching to complex tasks such as artificial intelligence and machine learning.
Mathematics: Algorithms are used to solve mathematical problems, such as finding the optimal solution to a system of linear equations or finding the shortest path in a graph.

Operations Research: Algorithms are used to optimize and make decisions in fields such as transportation, logistics, and resource allocation.

Artificial Intelligence: Algorithms are the foundation of artificial intelligence and machine learning, and are used to develop intelligent systems that can perform tasks such as image recognition, natural language processing, and decision-making.

Data Science: Algorithms are used to analyze, process, and extract insights from large amounts of data in fields such as marketing, finance, and healthcare.

These are just a few examples of the many applications of algorithms. The use of algorithms is continually expanding as new technologies and fields emerge, making it a vital component of modern society.
It can be understood by taking the example of cooking a new recipe. To cook a new recipe, one reads the instructions and steps and executes them one by one, in the given sequence. The result thus obtained is the new dish is cooked perfectly. Every time you use your phone, computer, laptop, or calculator you are using Algorithms. Similarly, algorithms help to do a task in programming to get the expected output.

The Algorithm designed are language-independent, i.e. they are just plain instructions that can be implemented in any language, and yet the output will be the same, as expected.'''),


_boldtext('''\nWhat is the need for algorithms:'''),
_normaltext('''
1.Algorithms are necessary for solving complex problems efficiently and effectively. 

2.They help to automate processes and make them more reliable, faster, and easier to perform.

3.Algorithms also enable computers to perform tasks that would be difficult or impossible for humans to do manually.

4.They are used in various fields such as mathematics, computer science, engineering, finance, and many others to optimize processes, analyze data, make predictions, and provide solutions to problems.''')

 

          ]),
        ),
      ),
    );
  }
}





class Classification extends StatefulWidget {
  const Classification({super.key});

  @override
  State<Classification> createState() => _ClassificationState();
}

class _ClassificationState extends State<Classification> {
 

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
        title: const Text("Classification"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Types of Algorithms"),
                _normaltext('''
There are several types of algorithms available. Some important algorithms are:

1. Brute Force Algorithm: It is the simplest approach for a problem. A brute force algorithm is the first approach that comes to finding when we see a problem.

2. Recursive Algorithm: A recursive algorithm is based on recursion. In this case, a problem is broken into several sub-parts and called the same function again and again.

3. Backtracking Algorithm: The backtracking algorithm basically builds the solution by searching among all possible solutions. Using this algorithm, we keep on building the solution following criteria. Whenever a solution fails we trace back to the failure point and build on the next solution and continue this process till we find the solution or all possible solutions are looked after.

4. Searching Algorithm: Searching algorithms are the ones that are used for searching elements or groups of elements from a particular data structure. They can be of different types based on their approach or the data structure in which the element should be found.

5. Sorting Algorithm: Sorting is arranging a group of data in a particular manner according to the requirement. The algorithms which help in performing this function are called sorting algorithms. Generally sorting algorithms are used to sort groups of data in an increasing or decreasing manner.

6. Hashing Algorithm: Hashing algorithms work similarly to the searching algorithm. But they contain an index with a key ID. In hashing, a key is assigned to specific data.

7. Divide and Conquer Algorithm: This algorithm breaks a problem into sub-problems, solves a single sub-problem and merges the solutions together to get the final solution. It consists of the following three steps:

Divide
Solve
Combine
8. Greedy Algorithm: In this type of algorithm the solution is built part by part. The solution of the next part is built based on the immediate benefit of the next part. The one solution giving the most benefit will be chosen as the solution for the next part.

9. Dynamic Programming Algorithm: This algorithm uses the concept of using the already found solution to avoid repetitive calculation of the same part of the problem. It divides the problem into smaller overlapping subproblems and solves them.

10. Randomized Algorithm: In the randomized algorithm we use a random number so it gives immediate benefit. The random number helps in deciding the expected outcome.

'''   ),

               



          ]),
        ),
      ),
    );
  }
}





class Complexity extends StatefulWidget {
  const Complexity({super.key});

  @override
  State<Complexity> createState() => _ComplexityState();
}

class _ComplexityState extends State<Complexity> {
 
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
        title: const Text("compexity"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Know about Algorithm Complexity"),
                _normaltext('''
Complexity in algorithms refers to the amount of resources (such as time or memory) required to solve a problem or perform a task. The most common measure of complexity is time complexity, which refers to the amount of time an algorithm takes to produce a result as a function of the size of the input. Memory complexity refers to the amount of memory used by an algorithm. Algorithm designers strive to develop algorithms with the lowest possible time and memory complexities, since this makes them more efficient and scalable.

The complexity of an algorithm is a function describing the efficiency of the algorithm in terms of the amount of data the algorithm must process.

Usually there are natural units for the domain and range of this function.

An algorithm is analyzed using Time Complexity and Space Complexity. Writing an efficient algorithm help to consume the minimum amount of time for processing the logic. For algorithm A, it is judged on the basis of two parameters for an input of size n :

Time Complexity: Time taken by the algorithm to solve the problem. It is measured by calculating the iteration of loops, number of comparisons etc.
Time complexity is a function describing the amount of time an algorithm takes in terms of the amount of input to the algorithm.
“Time” can mean the number of memory accesses performed, the number of comparisons between integers, the number of times some inner loop is executed, or some other natural unit related to the amount of real time the algorithm will take.
Space Complexity: Space taken by the algorithm to solve the problem. It includes space used by necessary input variables and any extra space (excluding the space taken by inputs) that is used by the algorithm. For example, if we use a hash table (a kind of data structure), we need an array to store values so 
this is an extra space occupied, hence will count towards the space complexity of the algorithm. This extra space is known as Auxiliary Space.
Space complexity is a function describing the amount of memory(space)an algorithm takes in terms of the amount of input to the algorithm.
Space complexity is sometimes ignored because the space used is minimal and/ or obvious, but sometimes it becomes an issue as time.
.The time complexity of the operations:

The choice of data structure should be based on the time complexity of the operations that will be performed.
Time complexity is defined in terms of how many times it takes to run a given algorithm, based on the length of the input.
The time complexity of an algorithm is the amount of time it takes for each statement to complete. It is highly dependent on the size of the processed data.
For example, if you need to perform searches frequently, you should use a binary search tree.
.The space complexity of the operations:

The choice of data structure should be based on the space complexity of the operations that will be performed.
The amount of memory used by a program to execute it is represented by its space complexity.
Because a program requires memory to store input data and temporal values while running , the space complexity is auxiliary and input space.
For example, if you need to store a lot of data, you should use an array.
cases in complexities:
There are two commonly studied cases of complexity in algorithms:

1.Best case complexity: The best-case scenario for an algorithm is the scenario in which the algorithm performs the minimum amount of work (e.g. takes the shortest amount of time, uses the least amount of memory, etc.).

2.Worst case complexity: The worst-case scenario for an algorithm is the scenario in which the algorithm performs the maximum amount of work (e.g. takes the longest amount of time, uses the most amount of memory, etc.).

In analyzing the complexity of an algorithm, it is often more informative to study the worst-case scenario, as this gives a guaranteed upper bound on the performance of the algorithm. Best-case scenario analysis is sometimes performed, but is generally less important as it provides a lower bound that is often trivial to achieve.'''   ),

               



          ]),
        ),
      ),
    );
  }
}





class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
 
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
        title: const Text("Algorithm Design"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Algorithm Design"),
                _normaltext(
'''An Algorithm is a procedure to solve a particular problem in a finite number of steps for a finite-sized input. 
The algorithms can be classified in various ways. They are: 
 

Implementation Method
Design Method
Design Approaches
Other Classifications
In this article, the different algorithms in each classification method are discussed. 

The classification of algorithms is important for several reasons:

Organization: Algorithms can be very complex and by classifying them, it becomes easier to organize, understand, and compare different algorithms.\nProblem Solving: Different problems require different algorithms, and by having a classification, it can help identify the best algorithm for a particular problem.

Performance Comparison: By classifying algorithms, it is possible to compare their performance in terms of time and space complexity, making it easier to choose the best algorithm for a particular use case.

Reusability: By classifying algorithms, it becomes easier to re-use existing algorithms for similar problems, thereby reducing development time and improving efficiency.

Research: Classifying algorithms is essential for research and development in computer science, as it helps to identify new algorithms and improve existing ones.

Overall, the classification of algorithms plays a crucial role in computer science and helps to improve the efficiency and effectiveness of solving problems.'''
                ),

              
               



          ]),
        ),
      ),
    );
  }
}











class Analysis extends StatefulWidget {
  const Analysis({super.key});

  @override
  State<Analysis> createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
 
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
        title: const Text("analysis"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Analysis"),
                _normaltext(
'''n the analysis of the algorithm, it generally focused on CPU (time) usage, Memory usage, Disk usage, and Network usage. All are important, but the most concern is about the CPU time. Be careful to differentiate between:

Performance: How much time/memory/disk/etc. is used when a program is run. This depends on the machine, compiler, etc. as well as the code we write.
Complexity: How do the resource requirements of a program or algorithm scale, i.e. what happens as the size of the problem being solved by the code gets larger.
Note: Complexity affects performance but not vice-versa.\n'''
                ),


               _boldtext('''Algorithm Analysis''') ,
                _normaltext('''Algorithm analysis is an important part of computational complexity theory, which provides theoretical estimation for the required resources of an algorithm to solve a specific computational problem. Analysis of algorithms is the determination of the amount of time and space resources required to execute it.'''),


                _boldtext("Why Analysis of Algorithms is important?"),
                _normaltext('''To predict the behavior of an algorithm without implementing it on a specific computer.
It is much more convenient to have simple measures for the efficiency of an algorithm than to implement the algorithm and test the efficiency every time a certain parameter in the underlying computer system changes.
It is impossible to predict the exact behavior of an algorithm. There are too many influencing factors.
The analysis is thus only an approximation; it is not perfect.
More importantly, by analyzing different algorithms, we can compare them to determine the best one for our purpose.
Types of Algorithm Analysis:

Best case 
Worst case
Average case
Best case: Define the input for which algorithm takes less time or minimum time. In the best case calculate the lower bound of an algorithm. Example: In the linear search when search data is present at the first location of large data then the best case occurs.
Worst Case: Define the input for which algorithm takes a long time or maximum time. In the worst calculate the upper bound of an algorithm. Example: In the linear search when search data is not present at all then the worst case occurs.
Average case: In the average case take all random inputs and calculate the computation time for all inputs.
And then we divide it by the total number of inputs.''')

          ]),
        ),
      ),
    );
  }
}




//////////////////////////////
//////////////////////////////////////////
/////////////////////////////////////////////////////////
///
///
///









class algointertopic extends StatefulWidget {
  const algointertopic({super.key});

  @override
  State<algointertopic> createState() => _algointertopicState();
}

class _algointertopicState extends State<algointertopic> {
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
          "Algorithm intermediant",
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
                        "Algorithm  Intermediant",
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
            customCard("Searching algorithm", "Searching element",
                (context) => const Sorting(), context),
            customCard("Sorting algorithm", "Sorting algorithm approach",
                (context) => const Searching(), context),
                 customCard("Recursive algorithm", "Recusive approach",
                (context) => const Recursive(), context),
            customCard("Two pointer", "Two pointer Technique",
                (context) => Pointer(), context),
           
            customCard("Hashing algorithm", "Hasing data approach",
                (context) => Hashing(), context),
           
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






class Sorting extends StatefulWidget {
  const Sorting({super.key});

  @override
  State<Sorting> createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
 
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
        title: const Text("Searching algorithm"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Searching Algorithm?"),
                _normaltext(
'''Searching Algorithms are designed to check for an element or retrieve an element from any data structure where it is stored.\n

Based on the type of search operation, these algorithms are generally classified into two categories:

Sequential Search: In this, the list or array is traversed sequentially and every element is checked. For example: Linear Search.

Interval Search: These algorithms are specifically designed for searching in sorted data-structures. These type of searching algorithms are much more efficient than Linear Search as they repeatedly target the center of the search structure and divide the search space in half. For Example: Binary Search.'''
                ),

              

          _boldtext("\nLinear search"),
          _normaltext('''Linear Search is defined as a sequential search algorithm that starts at one end and goes through each element of a list until the desired element is found, otherwise the search continues till the end of the data set.'''),




Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/Linear-Search1.png",
),
),
),
),


          _boldtext("\nHow Does Linear Search Algorithm Work?"),
          _normaltext('''In Linear Search Algorithm, 

Every element is considered as a potential match for the key and checked for the same.
If any element is found equal to the key, the search is successful and the index of that element is returned.
If no element is found equal to the key, the search yields “No match found”.
For example: Consider the array arr[] = {10, 50, 30, 70, 80, 20, 90, 40} and key = 30\n\n'''),



_boldtext("Implementation of Linear Search Algorithm\n"),

_CodeArea(
  '''

   // C++ code to linearly search x in arr[].

#include <bits/stdc++.h>
using namespace std;

int search(int arr[], int N, int x)
{
	for (int i = 0; i < N; i++)
		if (arr[i] == x)
			return i;
	return -1;
}

// Driver code
int main(void)
{
	int arr[] = { 2, 3, 4, 10, 40 };
	int x = 10;
	int N = sizeof(arr) / sizeof(arr[0]);

	// Function call
	int result = search(arr, N, x);
	(result == -1)
		? cout << "Element is not present in array"
		: cout << "Element is present at index " << result;
	return 0;
}


'''
),


SizedBox(height: 20,),
_CodeArea(
  ''' 


     Element is present at index 3
     
    '''
)


          ]),
        ),
      ),
    );
  }
}








class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  
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
        title: const Text("Sorting algorithm"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is sorting"),
                _normaltext(
'''A Sorting Algorithm is used to rearrange a given array or list of elements according to a comparison operator on the elements. The comparison operator is used to decide the new order of elements in the respective data structure.\n'''
                ),

               

               _boldtext("Selection sort"),
               _normaltext('''Selection sort is a simple and efficient sorting algorithm that works by repeatedly selecting the smallest (or largest) element from the unsorted portion of the list and moving it to the sorted portion of the list. '''),

               _boldtext("\nHow does Selection Sort Algorithm work?"),
               _normaltext('''Lets consider the following array as an example: arr[] = {64, 25, 12, 22, 11}

First pass:

For the first position in the sorted array, the whole array is traversed from index 0 to 4 sequentially. The first position where 64 is stored presently, after traversing whole array it is clear that 11 is the lowest value.
Thus, replace 64 with 11. After one iteration 11, which happens to be the least value in the array, tends to appear in the first position of the sorted list.
'''),




Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/1.webp",
),
),
),
),



 _normaltext('''Second Pass:

For the second position, where 25 is present, again traverse the rest of the array in a sequential manner.
After traversing, we found that 12 is the second lowest value in the array and it should appear at the second place in the array, thus swap these values.
'''),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/2.webp",
),
),
),
),


_normaltext('''Third Pass:

Now, for third place, where 25 is present again traverse the rest of the array and find the third least value present in the array.
While traversing, 22 came out to be the third least value and it should appear at the third place in the array, thus swap 22 with element present at third position.
'''),




Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/3.webp",
),
),
),
),







_normaltext('''Fourth pass:

Similarly, for fourth position traverse the rest of the array and find the fourth least element in the array 
As 25 is the 4th lowest value hence, it will place at the fourth position.
'''),





Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/4.webp",
),
),
),
),





_normaltext('''Fifth Pass:

At last the largest value present in the array automatically get placed at the last position in the array
The resulted array is the sorted array.'''),





Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/5.webp",
),
),
),
),


  SizedBox(height: 20,),
  _CodeArea('''


        // C++ program for implementation of
// selection sort
#include <bits/stdc++.h>
using namespace std;

// Function for Selection sort
void selectionSort(int arr[], int n)
{
	int i, j, min_idx;

	// One by one move boundary of
	// unsorted subarray
	for (i = 0; i < n - 1; i++) {

		// Find the minimum element in
		// unsorted array
		min_idx = i;
		for (j = i + 1; j < n; j++) {
			if (arr[j] < arr[min_idx])
				min_idx = j;
		}

		// Swap the found minimum element
		// with the first element
		if (min_idx != i)
			swap(arr[min_idx], arr[i]);
	}
}

// Function to print an array
void printArray(int arr[], int size)
{
	int i;
	for (i = 0; i < size; i++) {
		cout << arr[i] << " ";
		cout << endl;
	}
}

// Driver program
int main()
{
	int arr[] = { 64, 25, 12, 22, 11 };
	int n = sizeof(arr) / sizeof(arr[0]);

	// Function Call
	selectionSort(arr, n);
	cout << "Sorted array: ";
	printArray(arr, n);
	return 0;
}

// This is code is contributed by rathbhupendra




'''),

SizedBox(height: 20,),
_CodeArea('''Sorted array: 
11 12 22 25 64 '''),
          ]),
        ),
      ),
    );
  }
}





class Recursive extends StatefulWidget {
  const Recursive({super.key});

  @override
  State<Recursive> createState() => _RecursiveState();
}

class _RecursiveState extends State<Recursive> {
  
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
        title: const Text("Recursive "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Recursive algorithm"),
                _normaltext(
'''A recursive algorithm calls itself with smaller input values and returns the result for the current input by carrying out basic operations on the returned value for the smaller input. Generally, if a problem can be solved by applying solutions to smaller versions of the same problem, and the smaller versions shrink to readily solvable instances, then the problem can be solved using a recursive algorithm.

To build a recursive algorithm, you will break the given problem statement into two parts. The first one is the base case, and the second one is the recursive step.

Base Case: It is nothing more than the simplest instance of a problem, consisting of a condition that terminates the recursive function. This base case evaluates the result when a given condition is met.
Recursive Step: It computes the result by making recursive calls to the same function, but with the inputs decreased in size or complexity.



''' ),
          

          _boldtext("Implementation of recursive algorithm\n"),
          _CodeArea('''


                 // A C++ program to demonstrate working of
// recursion
#include <bits/stdc++.h>
using namespace std;

void printFun(int test)
{
	if (test < 1)
		return;
	else {
		cout << test << " ";
		printFun(test - 1); // statement 2
		cout << test << " ";
		return;
	}
}

// Driver Code
int main()
{
	int test = 3;
	printFun(test);
}



'''),


    SizedBox(height: 20,),
    _CodeArea('''

            
            3 2 1 1 2 3 
            
            
            
            '''),

          ]),
        ),
      ),
    );
  }
}






class Pointer extends StatefulWidget {
  const Pointer({super.key});

  @override
  State<Pointer> createState() => _PointerState();
}

class _PointerState extends State<Pointer> {
 
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
        title: const Text("Two pointer"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Two Pointers Technique"),
                _normaltext(
'''Two pointers is really an easy and effective technique that is typically used for searching pairs in a sorted array.
Given a sorted array A (sorted in ascending order), having N integers, find if there exists any pair of elements (A[i], A[j]) such that their sum is equal to X.

Illustration : 

A[] = {10, 20, 35, 50, 75, 80}
X = =70
i = 0
j = 5

A[i] + A[j] = 10 + 80 = 90
Since A[i] + A[j] > X, j--
i = 0
j = 4

A[i] + A[j] = 10 + 75 = 85
Since A[i] + A[j] > X, j--
i = 0
j = 3

A[i] + A[j] = 10 + 50 = 60
Since A[i] + A[j] < X, i++
i = 1
j = 3
m
A[i] + A[j] = 20 + 50 = 70
Thus this signifies that Pair is Found.




Let us do discuss the working of two pointer algorithm in brief which is as follows. The algorithm basically uses the fact that the input array is sorted. We start the sum of extreme values (smallest and largest) and conditionally move both pointers. We move left pointer ‘i’ when the sum of A[i] and A[j] is less than X. We do not miss any pair because the sum is already smaller than X. Same logic applies for right pointer j.

Here we will be proposing a two-pointer algorithm by starting off with the naïve approach only in order to showcase the execution of operations going on in both methods and secondary to justify how two-pointer algorithm optimizes code via time complexities across all dynamic\n'''
                ),

                _CodeArea(
                  '''




      // C++ Program Illustrating Naive Approach to
// Find if There is a Pair in A[0..N-1] with Given Sum
// Using Two-pointers Technique

// Importing required libraries
#include <bits/stdc++.h>
using namespace std;

// Two pointer technique based solution to find
// if there is a pair in A[0..N-1] with a given sum.
int isPairSum(vector<int>& A, int N, int X)
{
	// represents first pointer
	int i = 0;

	// represents second pointer
	int j = N - 1;

	while (i < j) {

		// If we find a pair
		if (A[i] + A[j] == X)
			return 1;

		// If sum of elements at current
		// pointers is less, we move towards
		// higher values by doing i++
		else if (A[i] + A[j] < X)
			i++;

		// If sum of elements at current
		// pointers is more, we move towards
		// lower values by doing j--
		else
			j--;
	}
	return 0;
}

// Driver code
int main()
{
	// array declaration
	vector<int> arr = { 2, 3, 5, 8, 9, 10, 11 };

	// value to search
	int val = 17;

	// size of the array
	int arrSize = arr.size();

	// array should be sorted before using two-pointer
	// technique
	sort(arr.begin(), arr.end());

	// Function call
	cout << (isPairSum(arr, arrSize, val) ? "True"
										: "False");

	return 0;
}

    
    '''

 
                ),
          
         SizedBox(height: 20,),
         _CodeArea('''


True


'''),
                
               



          ]),
        ),
      ),
    );
  }
}









class Hashing extends StatefulWidget {
  const Hashing({super.key});

  @override
  State<Hashing> createState() => _HashingState();
}

class _HashingState extends State<Hashing> {
 
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
        title: const Text("Hashing algorithm"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Hashing algorithm\n"),
                _normaltext(
'''Hashing refers to the process of generating a fixed-size output from an input of variable size using the mathematical formulas known as hash functions. This technique determines an index or location for the storage of an item in a data structure.\n'''
                ),



                _boldtext("\nNeed for Hash data structure\n"),
                _normaltext('''\nEvery day, the data on the internet is increasing multifold and it is always a struggle to store this data efficiently. In day-to-day programming, this amount of data might not be that big, but still, it needs to be stored, accessed, and processed easily and efficiently. A very common data structure that is used for such a purpose is the Array data structure.

Now the question arises if Array was already there, what was the need for a new data structure! The answer to this is in the word “efficiency“. Though storing in Array takes O(1) time, searching in it takes at least O(log n) time. This time appears to be small, but for a large data set, it can cause a lot of problems and this, in turn, makes the Array data structure inefficient. 

So now we are looking for a data structure that can store the data and search in it in constant time, i.e. in O(1) time. This is how Hashing data structure came into play. With the introduction of the Hash data structure, it is now possible to easily store data in constant time and retrieve them in constant time as well.

Components of Hashing
There are majorly three components of hashing:

Key: A Key can be anything string or integer which is fed as input in the hash function the technique that determines an index or location for storage of an item in a data structure. 
Hash Function: The hash function receives the input key and returns the index of an element in an array called a hash table. The index is known as the hash index.
Hash Table: Hash table is a data structure that maps keys to values using a special function called a hash function. Hash stores the data in an associative manner in an array where each data value has its own unique index.\n'''),



_boldtext("\nHow does Hashing work?\n"),
_normaltext('''
Suppose we have a set of strings {“ab”, “cd”, “efg”} and we would like to store it in a table. 

Our main objective here is to search or update the values stored in the table quickly in O(1) time and we are not concerned about the ordering of strings in the table. So the given set of strings can act as a key and the string itself will act as the value of the string but how to store the value corresponding to the key? 

Step 1: We know that hash functions (which is some mathematical formula) are used to calculate the hash value which acts as the index of the data structure where the value will be stored. 

Step 2: So, let’s assign 
“a” = 1,
“b”=2, .. etc, to all alphabetical characters. 

Step 3: Therefore, the numerical value by summation of all characters of the string: 
“ab” = 1 + 2 = 3, 
“cd” = 3 + 4 = 7 , 
“efg” = 5 + 6 + 7 = 18  

Step 4: Now, assume that we have a table of size 7 to store these strings. The hash function that is used here is the sum of the characters in key mod Table size. We can compute the location of the string in the array by taking the sum(string) mod 7.

Step 5: So we will then store 
“ab” in 3 mod 7 = 3, 
“cd” in 7 mod 7 = 0, and 
“efg” in 18 mod 7 = 4.



The above technique enables us to calculate the location of a given string by using a simple hash function and rapidly find the value that is stored in that location. Therefore the idea of hashing seems like a great way to store (key, value) pairs of the data in a table.''')

                
               



          ]),
        ),
      ),
    );
  }
}



//////////////////////////////////
/////////////////////////
///
//advance algo







class Algoadvancetopicpage extends StatefulWidget {
  const Algoadvancetopicpage({super.key});

  @override
  State<Algoadvancetopicpage> createState() => _AlgoadvancetopicpageState();
}

class _AlgoadvancetopicpageState extends State<Algoadvancetopicpage> {
  


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
          "Algorithm Advance learning",
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
                        "  Algorithm Advance",
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
             customCard("Greedy Algorithm", "Optimazation Algorithm ",
                (context) => OOP(), context),
             customCard("Dynamic algorithm", "Optimization Algorithm",
                (context) => OOP1(), context),
            customCard("Bitwise", "Memory efficient algorithm",
                (context) => Object(), context),
               
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
        title: const Text("Greedy algorithm"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Greedy Algorithm"),
                _normaltext(
'''
Greedy is an algorithmic paradigm that builds up a solution piece by piece, always choosing the next piece that offers the most obvious and immediate benefit. So the problems where choosing locally optimal also leads to global solution are the best fit for Greedy.



For example consider the Fractional Knapsack Problem. The local optimal strategy is to choose the item that has maximum value vs weight ratio. This strategy also leads to a globally optimal solution because we are allowed to take fractions of an item.
'''),
                


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/Fractional-Knapsackexample-min-768x384.png",
),
),
),
),


_boldtext("The general structure of a greedy algorithm can be summarized in the following steps: \n"),
_normaltext(
'''
1.Identify the problem as an optimization problem where we need to find the best solution among a set of possible solutions.

2.Determine the set of feasible solutions for the problem.

3.Identify the optimal substructure of the problem, meaning that the optimal solution to the problem can be constructed from the optimal solutions of its subproblems.

4.Develop a greedy strategy to construct a feasible solution step by step, making the locally optimal choice at each step.
Prove the correctness of the algorithm by showing that the locally optimal choices at each step lead to a globally optimal solution.
\n\n'''
),





_boldtext("Some common applications of greedy algorithms include: \n"),
_normaltext(
'''
1.Coin change problem: Given a set of coins with different denominations, find the minimum number of coins required to make a given amount of change.
Fractional knapsack problem: Given a set of items with weights and values, fill a knapsack with a maximum weight capacity with the most valuable items, allowing fractional amounts of items to be included.
Huffman coding: Given a set of characters and their frequencies in a message, construct a binary code with minimum average length for the characters.
Shortest path algorithms: Given a weighted graph, find the shortest path between two nodes.
Minimum spanning tree: Given a weighted graph, find a tree that spans all nodes with the minimum total weight.
Greedy algorithms can be very efficient and provide fast solutions for many problems. However, it is important to keep in mind that they may not always provide the optimal solution and to analyze the problem carefully to ensure the correctness of the algorithm.


2.Greedy Algorithms work step-by-step, and always choose the steps which provide immediate profit/benefit. It chooses the “locally optimal solution”, without thinking about future consequences. Greedy algorithms may not always lead to the optimal global solution, because it does not consider the entire data. The choice made by the greedy approach does not consider future data and choices. In some cases making a decision that looks right at that moment gives the best solution (Greedy), but in other cases, it doesn’t. The greedy technique is used for optimization problems (where we have to find the maximum or minimum of something). The Greedy technique is best suited for looking at the immediate situation

\n\n'''
),






_boldtext("All greedy algorithms follow a basic structure:  \n"),
_normaltext(
'''
1.declare an empty result = 0.
2.We make a greedy choice to select, If the choice is feasible add it to the final result.
3.return the result.


\n\n'''
),




_boldtext("Why choose Greedy Approach:  \n"),
_normaltext(
'''
The greedy approach has a few tradeoffs, which may make it suitable for optimization. One prominent reason is to achieve the most feasible solution immediately. In the activity selection problem (Explained below), if more activities can be done before finishing the current activity, these activities can be performed within the same time.  Another reason is to divide a problem recursively based on a condition, with no need to combine all the solutions. In the activity selection problem, the “recursive division” step is achieved by scanning a list of items only once and considering certain activities.

\n\n'''
),



 
_boldtext("Greedy choice property:   \n"),
_normaltext(
'''
This property says that the globally optimal solution can be obtained by making a locally optimal solution (Greedy). The choice made by a Greedy algorithm may depend on earlier choices but not on the future. It iteratively makes one Greedy choice after another and reduces the given problem to a smaller one.

\n\n'''
),




   
_boldtext("Optimal substructure:  \n"),
_normaltext(
'''
A problem exhibits optimal substructure if an optimal solution to the problem contains optimal solutions to the subproblems. That means we can solve subproblems and build up the solutions to solve larger problems.

\n\n'''
),

      


 
_boldtext("Characteristics of Greedy approach:  \n"),
_normaltext(
'''
 1.There is an ordered list of resources(profit, cost, value, etc.) 
 2.Maximum of all the resources(max profit, max value, etc.) are taken. 
 3.For example, in the fractional knapsack problem, the maximum value/weight is taken first according to available capacity. 

\n\n'''
),



 
_boldtext("Characteristic components of greedy algorithm:  \n"),
_normaltext(
'''
The feasible solution: A subset of given inputs that satisfies all specified constraints of a problem is known as a “feasible solution”.
Optimal solution: The feasible solution that achieves the desired extremum is called an “optimal solution”. In other words, the feasible solution that either minimizes or maximizes the objective function specified in a problem is known as an “optimal solution”.

Feasibility check: It investigates whether the selected input fulfils all constraints mentioned in a problem or not. If it fulfils all the constraints then it is added to a set of feasible solutions; otherwise, it is rejected.

Optimality check: It investigates whether a selected input produces either a minimum or maximum value of the objective function by fulfilling all the specified constraints. If an element in a solution set produces the desired extremum, then it is added to a sel of optimal solutions.
Optimal substructure property: The globally optimal solution to a problem includes the optimal sub solutions within it.

Greedy choice property: The globally optimal solution is assembled by selecting locally optimal choices. The greedy approach applies some locally optimal criteria to obtain a partial solution that seems to be the best at that moment and then find out the solution for the remaining sub-problem.
 
 
 
The local decisions (or choices) must possess three characteristics as mentioned below: 

   Feasibility: The selected choice must fulfil local constraints.
   Optimality: The selected choice must be the best at that stage (locally optimal choice).
   Irrevocability: The selected choice cannot be changed once it is made.

\n\n'''
),






_boldtext("Applications of Greedy Algorithms:  \n"),
_normaltext(
'''
Finding an optimal solution (Activity selection, Fractional Knapsack, Job Sequencing, Huffman Coding). 

Finding close to the optimal solution for NP-Hard problems like TSP. 

Network design: Greedy algorithms can be used to design efficient networks, such as minimum spanning trees, shortest paths, and maximum flow networks. These algorithms can be applied to a wide range of network design problems, such as routing, resource allocation, and capacity planning.

Machine learning: Greedy algorithms can be used in machine learning applications, such as feature selection, clustering, and classification. In feature selection, greedy algorithms are used to select a subset of features that are most relevant to a given problem. In clustering and classification, greedy algorithms can be used to optimize the selection of clusters or classes.

Image processing: Greedy algorithms can be used to solve a wide range of image processing problems, such as image compression, denoising, and segmentation. For example, Huffman coding is a greedy algorithm that can be used to compress digital images by efficiently encoding the most frequent pixels.

Combinatorial optimization: Greedy algorithms can be used to solve combinatorial optimization problems, such as the traveling salesman problem, graph coloring, and scheduling. Although these problems are typically NP-hard, greedy algorithms can often provide close-to-optimal solutions that are practical and efficient.

Game theory: Greedy algorithms can be used in game theory applications, such as finding the optimal strategy for games like chess or poker. In these applications, greedy algorithms can be used to identify the most promising moves or actions at each turn, based on the current state of the game.

Financial optimization: Greedy algorithms can be used in financial applications, such as portfolio optimization and risk management. In portfolio optimization, greedy algorithms can be used to select a subset of assets that are most likely to provide the best return on investment, based on historical data and current market trends.
\n\n'''
),



_boldtext("Applications of Greedy Approach:  \n"),
_normaltext(
'''
Greedy algorithms are used to find an optimal or near optimal solution to many real-life problems. Few of them are listed below:

(1) Make a change problem

(2) Knapsack problem

(3) Minimum spanning tree

(4) Single source shortest path

(5) Activity selection problem 

(6) Job sequencing problem

(7) Huffman code generation.


(8) Dijkstra’s algorithm

(9) Greedy coloring

(10) Minimum cost spanning tree

(11) Job scheduling

(12) Interval scheduling

(13) Greedy set cover

(14) Knapsack with fractions

\n\n'''
),







_boldtext("Fractional Knapsack Problem\n"),
_normaltext(
'''
Given the weights and profits of N items, in the form of {profit, weight} put these items in a knapsack of capacity W to get the maximum total profit in the knapsack. In Fractional Knapsack, we can break items for maximizing the total value of the knapsack.


Input: arr[] = {{60, 10}, {100, 20}, {120, 30}}, W = 50
Output: 240 
Explanation: By taking items of weight 10 and 20 kg and 2/3 fraction of 30 kg. 
Hence total price will be 60+100+(2/3)(120) = 240

Input:  arr[] = {{500, 30}}, W = 10
Output: 166.667





Solution:

The basic idea of the greedy approach is to calculate the ratio profit/weight for each item and sort the item on the basis of this ratio. Then take the item with the highest ratio and add them as much as we can (can be the whole element or a fraction of it).

This will always give the maximum profit because, in each step it adds an element such that this is the maximum possible profit for that much weight.





Illustration:

Check the below illustration for a better understanding:

Consider the example: arr[] = {{100, 20}, {60, 10}, {120, 30}}, W = 50.

Sorting: Initially sort the array based on the profit/weight ratio. The sorted array will be {{60, 10}, {100, 20}, {120, 30}}.

Iteration:

For i = 0, weight = 10 which is less than W. So add this element in the knapsack. profit = 60 and remaining W = 50 – 10 = 40.
For i = 1, weight = 20 which is less than W. So add this element too. profit = 60 + 100 = 160 and remaining W = 40 – 20 = 20.
For i = 2, weight = 30 is greater than W. So add 20/30 fraction = 2/3 fraction of the element. Therefore profit = 2/3 * 120 + 160 = 80 + 160 = 240 and remaining W becomes 0.
So the final profit becomes 240 for W = 50.




Follow the given steps to solve the problem using the above approach:

Calculate the ratio (profit/weight) for each item.
Sort all the items in decreasing order of the ratio.
Initialize res = 0, curr_cap = given_cap.
Do the following for every item i in the sorted order:
If the weight of the current item is less than or equal to the remaining capacity then add the value of that item into the result
Else add the current item as much as we can and break out of the loop.
Return res.
Below is the implementation of the above approach:


\n\n'''
),


_CodeArea(
'''


// C++ program to solve fractional Knapsack Problem

#include <bits/stdc++.h>
using namespace std;

// Structure for an item which stores weight and
// corresponding value of Item
struct Item {
	int profit, weight;

	// Constructor
	Item(int profit, int weight)
	{
		this->profit = profit;
		this->weight = weight;
	}
};

// Comparison function to sort Item
// according to profit/weight ratio
static bool cmp(struct Item a, struct Item b)
{
	double r1 = (double)a.profit / (double)a.weight;
	double r2 = (double)b.profit / (double)b.weight;
	return r1 > r2;
}

// Main greedy function to solve problem
double fractionalKnapsack(int W, struct Item arr[], int N)
{
	// Sorting Item on basis of ratio
	sort(arr, arr + N, cmp);

	double finalvalue = 0.0;

	// Looping through all items
	for (int i = 0; i < N; i++) {
		
		// If adding Item won't overflow,
		// add it completely
		if (arr[i].weight <= W) {
			W -= arr[i].weight;
			finalvalue += arr[i].profit;
		}

		// If we can't add current Item,
		// add fractional part of it
		else {
			finalvalue
				+= arr[i].profit
				* ((double)W / (double)arr[i].weight);
			break;
		}
	}

	// Returning final value
	return finalvalue;
}

// Driver code
int main()
{
	int W = 50;
	Item arr[] = { { 60, 10 }, { 100, 20 }, { 120, 30 } };
	int N = sizeof(arr) / sizeof(arr[0]);

	// Function call
	cout << fractionalKnapsack(W, arr, N);
	return 0;
}



'''
),

SizedBox(height: 20,),
_CodeArea(
  '''
output:

240


Time Complexity: O(N * logN)
Auxiliary Space: O(N)


'''
)


      

         



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
        title: const Text("Dynamic Algorithm"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

               
                _boldtext("What is Dynamic algorithm?"),
                _normaltext(
'''
Dynamic Programming (DP) is defined as a technique that solves some particular type of problems in Polynomial Time. Dynamic Programming solutions are faster than the exponential brute method and can be easily proved their correctness.

Dynamic Programming is mainly an optimization over plain recursion. Wherever we see a recursive solution that has repeated calls for the same inputs, we can optimize it using Dynamic Programming. The idea is to simply store the results of subproblems so that we do not have to re-compute them when needed later. This simple optimization reduces time complexities from exponential to polynomial.'''),
                



_boldtext("Characteristics of Dynamic Programming Algorithm: \n"),
_normaltext(
'''
In general, dynamic programming (DP) is one of the most powerful techniques for solving a certain class of problems. 

There is an elegant way to formulate the approach and a very simple thinking process, and the coding part is very easy. 

Essentially, it is a simple idea, after solving a problem with a given input, save the result as a reference for future use, so you won’t have to re-solve it.. briefly ‘Remember your Past’ :). 

It is a big hint for DP if the given problem can be broken up into smaller sub-problems, and these smaller subproblems can be divided into still smaller ones, and in this process, you see some overlapping subproblems. 

Additionally, the optimal solutions to the subproblems contribute to the optimal solution of the given problem (referred to as the Optimal Substructure Property).

The solutions to the subproblems are stored in a table or array (memoization) or in a bottom-up manner (tabulation) to avoid redundant computation.

The solution to the problem can be constructed from the solutions to the subproblems.

Dynamic programming can be implemented using a recursive algorithm, where the solutions to subproblems are found recursively, or using an iterative algorithm, where the solutions are found by working through the subproblems in a specific order.
\n\n'''
),





_boldtext("Dynamic programming works on following principles:  \n"),
_normaltext(
'''

Characterize structure of optimal solution, i.e. build a mathematical model of the solution.

Recursively define the value of the optimal solution. 

Using bottom-up approach, compute the value of the optimal solution for each possible subproblems.
 Construct optimal solution for the original problem using information computed in the previous step.

\n\n'''
),






_boldtext("Applications: \n"),
_normaltext(
'''
Dynamic programming is used to solve optimization problems. It is used to solve many real-life problems such as,

(i) Make a change problem

(ii) Knapsack problem

(iii) Optimal binary search tree


\n\n'''
),




_boldtext("Techniques to solve Dynamic Programming Problems:  \n"),
_normaltext(
'''
1. Top-Down(Memoization):
Break down the given problem in order to begin solving it. If you see that the problem has already been solved, return the saved answer. If it hasn’t been solved, solve it and save it. This is usually easy to think of and very intuitive, This is referred to as Memoization.


2. Bottom-Up(Dynamic Programming):
Analyze the problem and see in what order the subproblems are solved, and work your way up from the trivial subproblem to the given problem. This process ensures that the subproblems are solved before the main problem. This is referred to as Dynamic Programming.
\n\n'''
),




Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/DynamicProgramming1.jpg",
),
),
),
),



 
_boldtext("Greedy choice property:   \n"),
_normaltext(
'''
There are two different ways to store the values so that the values of a sub-problem can be reused. Here, will discuss two patterns of solving dynamic programming (DP) problems: 

Tabulation: Bottom Up
Memoization: Top Down
Before getting to the definitions of the above two terms consider the following statements:

Version 1: I will study the theory of DP from GeeksforGeeks, then I will practice some problems on classic DP and hence I will master DP.
Version 2: To Master DP, I would have to practice Dynamic problems and practice problems – Firstly, I would have to study some theories of DP from GeeksforGeeks
Both versions say the same thing, the difference simply lies in the way of conveying the message and that’s exactly what Bottom-Up and Top-Down DP do. Version 1 can be related to Bottom-Up DP and Version-2 can be related to Top-Down DP.


\n\n'''
),




   
_boldtext("How to solve a Dynamic Programming Problem?  \n"),
_normaltext(
'''
To dynamically solve a problem, we need to check two necessary conditions: 

Overlapping Subproblems: 
When the solutions to the same subproblems are needed repetitively for solving the actual problem. The problem is said to have overlapping subproblems property.
\n\n'''
),

      


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/nthfibonacciseriesdynamicprogramming-300x200.png",
),
),
),
),
_normaltext(
'''N-th Fibonacci Series as Overlapping Subproblems
\n\n'''
),



_normaltext(
'''
Optimal Substructure Property:
 If the optimal solution of the given problem can be obtained by using optimal solutions of its subproblems then the problem is said to have Optimal Substructure Property.

\n\n'''
),

 
_boldtext("Steps to solve a Dynamic programming problem: \n"),
_normaltext(
'''
1.Identify if it is a Dynamic programming problem.
2.Decide a state expression with the Least parameters.
3.Formulate state and transition relationships.
4.Do tabulation (or memorization).

\n\n'''
),





 
_boldtext("How to classify a problem as a Dynamic Programming algorithm Problem?  \n"),
_normaltext(
'''
Typically, all the problems that require maximizing or minimizing certain quantities or counting problems that say to count the arrangements under certain conditions or certain probability problems can be solved by using Dynamic Programming.
All dynamic programming problems satisfy the overlapping subproblems property and most of the classic Dynamic programming problems also satisfy the optimal substructure property. Once we observe these properties in a given problem be sure that it can be solved using Dynamic Programming.
\n\n'''
),






_boldtext("Dynamic Programming Approach to Find and Print Nth Fibonacci Numbers:\n"),
_normaltext(
'''
Given a number n, print n-th Fibonacci Number. 

The Fibonacci numbers are the numbers in the following integer sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……..\n\n'''
),



Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/program-for-fibonacci-numbers-1024x512.png",
),
),
),
),



_normaltext(
'''
Input  : n = 1

Output : 1

Input  : n = 9

Output : 34

Input  : n = 10

Output : 55




Answer:
Consider the Recursion Tree for the 5th Fibonacci Number from the above approach:
                          fib(5)   
                     /            l
               fib(4)              fib(3)   
             /        l                     /       l 
         fib(3)      fib(2)         fib(2)   fib(1)
        /    l       /    l              /      l
  fib(2)   fib(1)  fib(1) fib(0) fib(1) fib(0)
  /     l
fib(1) fib(0)




If you see, the same method call is being done multiple times for the same value. This can be optimized with the help of Dynamic Programming. We can avoid the repeated work done in the Recursion approach by storing the Fibonacci numbers calculated so far.
\n\n'''
),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/nthfibonacciseriesdynamicprogramming.png",
),
),
),
),


_boldtext("Below is the implementation of the above approach:   \n"),

_CodeArea(
  '''


// C++ program for Fibonacci Series
// using Dynamic Programming
#include <bits/stdc++.h>
using namespace std;

class GFG {

public:
	int fib(int n)
	{

		// Declare an array to store
		// Fibonacci numbers.
		// 1 extra to handle
		// case, n = 0
		int f[n + 2];
		int i;

		// 0th and 1st number of the
		// series are 0 and 1
		f[0] = 0;
		f[1] = 1;

		for (i = 2; i <= n; i++) {

			// Add the previous 2 numbers
			// in the series and store it
			f[i] = f[i - 1] + f[i - 2];
		}
		return f[n];
	}
};

// Driver code
int main()
{
	GFG g;
	int n = 9;

	cout << g.fib(n);
	return 0;
}

// This code is contributed by SoumikMondal
'''
),



_CodeArea(
  '''
output:

34


Time complexity: O(n) for given n
Auxiliary space: O(n)




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
        title: const Text("Bitwise Algorithm"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Bitwise algorithm"),
                _normaltext(
'''
Bit stands for binary digit. A bit is the basic unit of information and can only have one of two possible values that is 0 or 1.

In our world, we usually with numbers using the decimal base. In other words. we use the digit 0 to 9 However, there are other number representations that can be quite useful such as the binary number systems.


Unlike humans, computers have no concepts of words and numbers. They receive data encoded at the lowest level as a series of zeros and ones (0 and 1). These are called bits, and they are the basis for all the commands they receive. We’ll begin by learning about bits and then explore a few algorithms for manipulating bits. We’ll then explore a few algorithms for manipulating bits. The tutorial is meant to be an introduction to bit algorithms for programmers.

'''               ),





Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/download (2).png",
),
),
),
),




                _boldtext("Need of the  Bitwise Algorithms :-"),
                _normaltext(
'''
Bitwise algorithms are an important tool in computer science and programming because they allow for efficient manipulation and processing of binary data. Here are a few reasons why bitwise algorithms are necessary:


Space Efficiency: Bitwise algorithms can be used to represent data in a more compact form, saving space in memory and on disk.

Time Efficiency: Bitwise operations are often faster than their equivalent operations using other data types, such as integers. This can lead to significant performance gains in time-sensitive applications.

Masking and Bitwise Encoding: Bitwise algorithms can be used to mask bits of data, which is useful for data encryption and compression. Bitwise encoding is also used to encode and decode data in a compact form, which is useful for transmitting data over networks and storing data on disk.

Optimization: Bitwise algorithms can be used to optimize algorithms by allowing for efficient manipulations of data at the binary level.

Hardware Interaction: Bitwise algorithms are often used to interact directly with hardware components, such as memory, networks, and processors, as well as to manipulate binary data in machine-level programming languages, such as Assembly.

Overall, bitwise algorithms play a critical role in modern computing and are a valuable tool for efficient data manipulation and processin

'''               ),







                _boldtext("Bitwise AND Operator (&)"),
                _normaltext(
'''

the bitwise AND operator is denoted using a single ampersand symbol, i.e. &. The & operator takes two equal-length bit patterns as parameters. The two-bit integers are compared. If the bits in the compared positions of the bit patterns are 1, then the resulting bit is 1. If not, it is 0.
'''               ),

Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BItwiseANDoperatortruthtable-300x216.png",
),
),
),
),




_normaltext(
  '''
Example: 
ake two bit values X and Y, where X = 7= (111)2 and Y = 4 = (100)2 . Take Bitwise and of both X & y

Bitwise ANDof (7 & 4)'''
),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BitwiseANDExample-300x172.png",
),
),
),
),



_CodeArea('''

#include <bits/stdc++.h>
using namespace std;

int main()
{

	int a = 7, b = 4;
	int result = a & b;
	cout << result << endl;

	return 0;
}

// output : 4
'''),







                _boldtext(" ​Bitwise OR Operator (|)"),
                _normaltext(
'''


The | Operator takes two equivalent length bit designs as boundaries; if the two bits in the looked-at position are 0, the next bit is zero. If not, it is 1.
''' ),

Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BItwiseORoperatortruthtable-300x216.png",
),
),
),
),




_normaltext(
  '''
Example: 
Take two bit values X and Y, where X = 7= (111)2 and Y = 4 = (100)2 . Take Bitwise OR of both X, y

Explanation: On the basis of truth table of bitwise OR operator we can conclude that the result of 

1 | 1  = 1
1 | 0 = 1
0 | 1 = 1
0 | 0 = 0

We used the similar concept of bitwise operator that are show in the image.'''
),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BitwiseORExample-300x172.png",
),
),
),
),



_CodeArea('''

#include <bits/stdc++.h>
using namespace std;

int main()
{

	int a = 12, b = 25;
	int result = a | b;
	cout << result;

	return 0;
}


// output : 29
'''),














                _boldtext(" Bitwise XOR Operator (^)"),
                _normaltext(
'''
The ^ operator (also known as the XOR operator) stands for Exclusive Or. Here, if bits in the compared position do not match their resulting bit is 1. i.e, The result of the bitwise XOR operator is 1 if the corresponding bits of two operands are opposite, otherwise 0.
''' ),

Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BItwiseXORoperatortruthtable-300x216.png",
),
),
),
),




_normaltext(
  '''
Example: 
Explanation: On the basis of truth table of bitwise XOR operator we can conclude that the result of 

1 ^ 1  = 0
1 ^ 0 = 1
0 ^ 1 = 1
0 ^ 0 = 0

We used the similar concept of bitwise operator that are show in the image.
 
 '''
),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BitwiseXORExample-300x176.png",
),
),
),
),



_CodeArea('''

#include <iostream>
using namespace std;

int main()
{

	int a = 12, b = 25;
	cout << (a ^ b);
	return 0;
}


// output : 21
'''),










                _boldtext("Bitwise NOT Operator (!~)"),
                _normaltext(
'''
All the above three bitwise operators are binary operators (i.e, requiring two operands in order to operate). Unlike other bitwise operators, this one requires only one operand to operate.

The bitwise Not Operator takes a single value and returns its one’s complement. The one’s complement of a binary number is obtained by toggling all bits in it, i.e, transforming the 0 bit to 1 and the 1 bit to 0.
''' ),

Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BItwiseNOToperatortruthtable-300x166.png",
),
),
),
),




_normaltext(
  '''
Example: 

Take two bit values X and Y, where X = 5= (101)2 . Take Bitwise NOT of X.
 
 
 
 

Explanation: On the basis of truth table of bitwise NOT operator we can conclude that the result of 

~1  = 0
~0 = 1

We used the similar concept of bitwise operator that are show in the image.'''
),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/BitwiseNOTExample-300x163.png",
),
),
),
),



_CodeArea('''

#include <iostream>
using namespace std;

int main()
{

	int a = 0;
	cout << "Value of a without using NOT operator: " << a;
	cout << "Inverting using NOT operator (with sign bit): " << (~a);
	cout << "Inverting using NOT operator (without sign bit): " << (!a);

	return 0;
}



// output : 
Value of a without using NOT operator: 0
Inverting using NOT operator (with sign bit): -1
Inverting using NOT operator (without sign bit): 1
'''),











          ]),
        ),
      ),
    );
  }
}







