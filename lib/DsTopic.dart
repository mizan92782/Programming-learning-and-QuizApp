import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cquiz.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';


class dsbasictopinpage extends StatefulWidget {
  const dsbasictopinpage({super.key});

  @override
  State<dsbasictopinpage> createState() => _dsbasictopinpageState();
}

class _dsbasictopinpageState extends State<dsbasictopinpage> {
 
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
          "DS Basic ",
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
                        "Data Structure Basic",
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
            customCard("Introduction", "Concept of data structure",
                (context) => const Introduction(), context),
            customCard("Array", "Array data structure",
                (context) => const Array(), context),
            customCard("String", "String data structure",
                (context) => Stringds(), context),
            customCard("Stack", "Stack data structure",
                (context) => Stack(), context),
            customCard("Queue", "Queue data structure",
                (context) => Dequeue(), context),
            
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
        title: const Text("Introduction  "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Data Structure:"),
                _normaltext(
''''
A data structure is a storage that is used to store and organize data. It is a way of arranging data on a computer so that it can be accessed and updated efficiently.

A data structure is not only used for organizing the data. It is also used for processing, retrieving, and storing data. There are different basic and advanced types of data structures that are used in almost every program or software system that has been developed. So we must have good knowledge about data structures. 
\n'''
                ),

                _boldtext("\nClassification of Data Structure: "),
                _normaltext(
'''Fooudamentally data structure are two type:
      1.Linear data structure 
      2. Non- Linear data structure
      

Linear data structure: Data structure in which data elements are arranged sequentially or linearly, where each element is attached to its previous and next adjacent elements, is called a linear data structure. 
Examples of linear data structures are array, stack, queue, linked list, etc.
          Static data structure: Static data structure has a fixed memory size. It is easier to access the elements in a static data structure. 
          An example of this data structure is an array.

          Dynamic data structure: In dynamic data structure, the size is not fixed. It can be randomly updated during the runtime which may be considered efficient concerning the memory (space) complexity of the code. 
          Examples of this data structure are queue, stack, etc.
Non-linear data structure: Data structures where data elements are not placed sequentially or linearly are called non-linear data structures. In a non-linear data structure, we can’t traverse all the elements in a single run only. 
Examples of non-linear data structures are trees and graphs.


'''
                )

                
        
   
         



          ]),
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
        title: const Text("Array"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Array?\n"),
                _normaltext(
'''An array is a collection of items stored at contiguous memory locations. The idea is to store multiple items of the same type together. This makes it easier to calculate the position of each element by simply adding an offset to a base value, i.e., the memory location of the first element of the array (generally denoted by the name of the array).\n
'''
                ),


              
              
                  Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: Image(
                        
                          image: AssetImage(
                            "assets/images/Array1.png",
                          ),
                        
                      ),
                    ),
                  ),
              
                
                
               SizedBox(height: 20,),
               _boldtext("\nImplementation of Array \n"),
               _CodeArea(
'''#include <iostream>
using namespace std;

int main() {

  int numbers[5] = {7, 5, 6, 12, 35};

  cout << "The numbers are: ";

  //  Printing array elements
  // using range based for loop
  for (const int &n : numbers) {
    cout << n << "  ";
  }

  cout << "The numbers are: ";

  //  Printing array elements
  // using traditional for loop
  for (int i = 0; i < 5; ++i) {
    cout << numbers[i] << "  ";
  }

  return 0;
}'''
               ),

               SizedBox(height: 20,),

               _boldtext("\noutput\n"),
               _CodeArea(
'''  
     
     
      The numbers are: 7  5  6  12  35
      The numbers are: 7  5  6  12  35'''),


          ]),
        ),
      ),
    );
  }
}








class Stringds extends StatefulWidget {
  const  Stringds({super.key});

  @override
  State<Stringds> createState() => _StringdsState();
}

class _StringdsState extends State<Stringds> {
 


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
        title: const Text("String "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is String?"),
                _normaltext(

'''
Strings are considered a data type in general and are typically represented as arrays of bytes (or words) that store a sequence of characters. Strings are defined as an array of characters. The difference between a character array and a string is the string is terminated with a special character ‘\0’


Below are some examples of strings:

“geeks” , “for”, “geeks”, “GeeksforGeeks”, “Geeks for Geeks”, “123Geeks”, “@123 Geeks”
\n\n'''
                ),




                
                
           _boldtext("How String is represented in Memory?"),
           _normaltext(
'''In C, a string can be referred to either using a character pointer or as a character array. When strings are declared as character arrays, they are stored like other types of arrays in C. For example, if str[] is an auto variable then the string is stored in the stack segment, if it’s a global or static variable then stored in the data segment, etc'''
           ),

               Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/String1.png",
                          ),
                        
                      ),
                    ),
                  ),
              



          _boldtext("\nString representation"),
          _normaltext("Below is the representation of string \n"),
          _CodeArea(
          '''

// C++ program to demonstrate String
// using Standard String representation
  
#include <iostream>
#include <string>
using namespace std;
  
int main()
{
  
    // Declare and initialize the string
    string str1 = "Welcome to GeeksforGeeks!";
  
    // Initialization by raw string
    string str2("A Computer Science Portal");
  
    // Print string
    cout << str1 << endl << str2;
  
    return 0;
}

'''
          )

          ]),
        ),
      ),
    );
  }
}








class Stack extends StatefulWidget {
  const Stack({super.key});

  @override
  State<Stack> createState() => _StackState();
}

class _StackState extends State<Stack> {
 


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
        title: const Text("Stack "),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Stack?"),
                _normaltext(
'''
Stack is a linear data structure that follows a particular order in which the operations are performed. The order may be LIFO(Last In First Out) or FILO(First In Last Out). LIFO implies that the element that is inserted last, comes out first and FILO implies that the element that is inserted first, comes out last.


\n'''
                ),



                Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/Stack1.png",
                          ),
                        
                      ),
                    ),
                  ),




                _boldtext("\nPrimary Stack Operations:\n"),
                _normaltext(
'''
  >>void push(int data): When this operation is performed, an element is inserted into the stack.

 >> int pop():   When this operation is performed, an element is removed from the top of the stack and is returned.\n\n'''
                ),

                _boldtext("Auxiliary Stack Operations:\n"),
                _normaltext('''
   >.int top(): This operation will return the last inserted element that is at the top without removing it.
   >>int size(): This operation will return the size of the stack i.e. the total number of elements present in the stack.
  >>int isEmpty(): This operation indicates whether the stack is empty or not.
  >>int isFull(): This operation indicates whether the stack is full or not.'''),
  _boldtext("\n\nImplementation  using linked list\n"),

                _CodeArea(
                  '''



// C++ program to Implement a stack
// using singly linked list
#include <bits/stdc++.h>
using namespace std;

// creating a linked list;
class Node {
public:
	int data;
	Node* link;

	// Constructor
	Node(int n)
	{
		this->data = n;
		this->link = NULL;
	}
};

class Stack {
	Node* top;

public:
	Stack() { top = NULL; }

	void push(int data)
	{

		// Create new node temp and allocate memory in heap
		Node* temp = new Node(data);

		// Check if stack (heap) is full.
		// Then inserting an element would
		// lead to stack overflow
		if (!temp) {
			cout << "Stack Overflow";
			exit(1);
		}

		// Initialize data into temp data field
		temp->data = data;

		// Put top pointer reference into temp link
		temp->link = top;

		// Make temp as top of Stack
		top = temp;
	}

	// Utility function to check if
	// the stack is empty or not
	bool isEmpty()
	{
		// If top is NULL it means that
		// there are no elements are in stack
		return top == NULL;
	}

	// Utility function to return top element in a stack
	int peek()
	{
		// If stack is not empty , return the top element
		if (!isEmpty())
			return top->data;
		else
			exit(1);
	}

	// Function to remove
	// a key from given queue q
	void pop()
	{
		Node* temp;

		// Check for stack underflow
		if (top == NULL) {
			cout << "Stack Underflow" << endl;
			exit(1);
		}
		else {

			// Assign top to temp
			temp = top;

			// Assign second node to top
			top = top->link;

			// This will automatically destroy
			// the link between first node and second node

			// Release memory of top node
			// i.e delete the node
			free(temp);
		}
	}

	// Function to print all the
	// elements of the stack
	void display()
	{
		Node* temp;

		// Check for stack underflow
		if (top == NULL) {
			cout << "Stack Underflow";
			exit(1);
		}
		else {
			temp = top;
			while (temp != NULL) {

				// Print node data
				cout << temp->data;

				// Assign temp link to temp
				temp = temp->link;
				if (temp != NULL)
					cout << " -> ";
			}
		}
	}
};

// Driven Program
int main()
{
	// Creating a stack
	Stack s;

	// Push the elements of stack
	s.push(11);
	s.push(22);
	s.push(33);
	s.push(44);

	// Display stack elements
	s.display();

	// Print top element of stack
	cout << "Top element is " << s.peek() << endl;

	// Delete top elements of stack
	s.pop();
	s.pop();

	// Display stack elements
	s.display();

	// Print top element of stack
	cout << "Top element is " << s.peek() << endl;

	return 0;
}

    
    '''

 
                ),

                SizedBox(height: 20,),
                _CodeArea(
'''  


44 -> 33 -> 22 -> 11
Top element is 44
22 -> 11
Top element is 22

   '''
                ),


                SizedBox(height: 30), 
                _boldtext("Complexity"),
                _normaltext('''
Time Complexity: O(1), for all push(), pop(), and peek(), as we are not performing any kind of traversal over the list. We perform all the operations through the current pointer only.
Auxiliary Space: O(N), where N is the size of the stack'''),            
               



          ]),
        ),
      ),
    );
  }
}










class Dequeue extends StatefulWidget {
  const Dequeue ({super.key});

  @override
  State<Dequeue > createState() => _DequeueState();
}

class _DequeueState extends State<Dequeue > {
 


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
        title: const Text("Queue"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Queue Data Structure?"),
                _normaltext(
'''A Queue is defined as a linear data structure that is open at both ends and the operations are performed in First In First Out (FIFO) order.
   
   
   
 We define a queue to be a list in which all additions to the list are made at one end, and all deletions from the list are made at the other end.  The element which is first pushed into the order, the operation is first performed on that.

\n.'''),


                  Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/Queue1.png",
                          ),
                        
                      ),
                    ),
                  ),




   _boldtext("FIFO Principle of Queue:\n"),
   _normaltext('''

1.Queue is like a line waiting to purchase tickets, where the first person in line is the first person served. (i.e. First come first serve).
2.osition of the entry in a queue ready to be served, that is, the first entry that will be removed from the queue, is called the front of the queue(sometimes, head of the queue), similarly, the position of the last entry in the queue, that is, the one most recently added, is called the rear (or the tail) of the queue. See the below figure.
\n'''),





  Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/fifo-property-in-Queue.png",
                          ),
                        
                      ),
                    ),
                  ),







  _boldtext("Queue repreentation using Linked list"),

   _CodeArea('''

   // C++ program for the above approach

#include <bits/stdc++.h>
using namespace std;

struct QNode {
	int data;
	QNode* next;
	QNode(int d)
	{
		data = d;
		next = NULL;
	}
};

struct Queue {
	QNode *front, *rear;
	Queue() { front = rear = NULL; }

	void enQueue(int x)
	{

		// Create a new LL node
		QNode* temp = new QNode(x);

		// If queue is empty, then
		// new node is front and rear both
		if (rear == NULL) {
			front = rear = temp;
			return;
		}

		// Add the new node at
		// the end of queue and change rear
		rear->next = temp;
		rear = temp;
	}

	// Function to remove
	// a key from given queue q
	void deQueue()
	{
		// If queue is empty, return NULL.
		if (front == NULL)
			return;

		// Store previous front and
		// move front one node ahead
		QNode* temp = front;
		front = front->next;

		// If front becomes NULL, then
		// change rear also as NULL
		if (front == NULL)
			rear = NULL;

		delete (temp);
	}
};

// Driver code
int main()
{

	Queue q;
	q.enQueue(10);
	q.enQueue(20);
	q.deQueue();
	q.deQueue();
	q.enQueue(30);
	q.enQueue(40);
	q.enQueue(50);
	q.deQueue();
	cout << "Queue Front : " << ((q.front != NULL) ? (q.front)->data : -1)<< endl;
	cout << "Queue Rear : " << ((q.rear != NULL) ? (q.rear)->data : -1);
}
// This code is contributed by rathbhupendra


  
   '''),




   _boldtext("\n\noutput\n"),
  _CodeArea(
  '''Queue Front : 40
Queue Rear : 50

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

class dsintertopicpage extends StatefulWidget {
  const dsintertopicpage({super.key});

  @override
  State<dsintertopicpage> createState() => _dsintertopicpageState();
}

class _dsintertopicpageState extends State<dsintertopicpage> {
  


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
          "DS intermediant",
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
                        "  Data structure intemediant",
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
             customCard("Linked list", " Concept of linked list ",
                (context) => Linkedlist(), context),
            customCard("Singly Linked List", "Single linked list data structure",
                (context) =>Single(), context),
            customCard("Doubly Linked list", "Double linked list data structure",
                (context) => Double(), context),
            customCard("Circular Linked list", "Single linked list data structure",
                (context) => Circuler(), context),
               
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






class Linkedlist extends StatefulWidget {
  const Linkedlist({super.key});

  @override
  State<Linkedlist> createState() => _LinkedlistState();
}

class _LinkedlistState extends State<Linkedlist> {
 


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
        title: const Text("Link list"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is a Linked List?"),
                _normaltext(
'''A Linked List is a linear data structure which looks like a chain of nodes, where each node is a different element. Unlike Arrays, Linked List elements are not stored at a contiguous location. 


It is basically chains of nodes, each node contains information such as data and a pointer to the next node in the chain. In the linked list there is a head pointer, which points to the first element of the linked list, and if the list is empty then it simply points to null or nothing.

'''),
                    SizedBox(
              height: 20,
            ),
                _boldtext("Why linked list data structure needed?"),
                _normaltext(
'''THere are a few advantages of a linked list that is listed below, it will help you understand why it is necessary to know.

Dynamic Data structure: The size of memory can be allocated or de-allocated at run time based on the operation insertion or deletion.
Ease of Insertion/Deletion: The insertion and deletion of elements are simpler than arrays since no elements need to be shifted after insertion and deletion, Just the address needed to be updated.
Efficient Memory Utilization: As we know Linked List is a dynamic data structure the size increases or decreases as per the requirement so this avoids the wastage of memory. 
Implementation: Various advanced data structures can be implemented using a linked list like a stack, queue, graph, hash maps, etc.

'''
                ),


                _boldtext(

'''Types of linked lists'''
                ),
                _normaltext(
'''here are mainly three types of linked lists:
       1.Single-linked list
       2.Double linked list
       3.Circular linked list

Let’s discuss each of them one by one in next tutorial




'''
                ),

 



          ]),
        ),
      ),
    );
  }
}


















class Single extends StatefulWidget {
  const Single({super.key});

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  

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
        title: const Text("Single linked list"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("Singly Linked List definition"),
                _normaltext(
'''A singly linked list is a special type of linked list in which each node has only one link that points to the next node in the linked list.\n'''
                ),



                  Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/singly-linkedlist.png",
                          ),
                        
                      ),
                    ),
                  ),



                  _boldtext("\n\nCharacteristics of a Singly Linked List:\n"),
                  _normaltext(
'''
> Each node holds a single value and a reference to the next node in the list.

> The list has a head, which is a reference to the first node in the list, and a tail, which is a reference to the last node in the list.

> The nodes are not stored in a contiguous block of memory, but instead, each node holds the address of the next node in the list.

> Accessing elements in a singly linked list requires traversing the list from the head to the desired node, as there is no direct access to a specific node in memory.\n\n'''),




               _boldtext("Implementation of Single link list\n" ),
                _CodeArea(
'''
     
     / C++ program for the above approach
#include <iostream>
using namespace std;
  
// Node class to represent
// a node of the linked list.
class Node {
public:
    int data;
    Node* next;
  
    // Default constructor
    Node()
    {
        data = 0;
        next = NULL;
    }
  
    // Parameterised Constructor
    Node(int data)
    {
        this->data = data;
        this->next = NULL;
    }
};
  
// Linked list class to
// implement a linked list.
class Linkedlist {
    Node* head;
  
public:
    // Default constructor
    Linkedlist() { head = NULL; }
  
    // Function to insert a
    // node at the end of the
    // linked list.
    void insertNode(int);
  
    // Function to print the
    // linked list.
    void printList();
  
    // Function to delete the
    // node at given position
    void deleteNode(int);
};
  
// Function to delete the
// node at given position
void Linkedlist::deleteNode(int nodeOffset)
{
    Node *temp1 = head, *temp2 = NULL;
    int ListLen = 0;
  
    if (head == NULL) {
        cout << "List empty." << endl;
        return;
    }
  
    // Find length of the linked-list.
    while (temp1 != NULL) {
        temp1 = temp1->next;
        ListLen++;
    }
  
    // Check if the position to be
    // deleted is greater than the length
    // of the linked list.
    if (ListLen < nodeOffset) {
        cout << "Index out of range"
             << endl;
        return;
    }
  
    // Declare temp1
    temp1 = head;
  
    // Deleting the head.
    if (nodeOffset == 1) {
  
        // Update head
        head = head->next;
        delete temp1;
        return;
    }
  
    // Traverse the list to
    // find the node to be deleted.
    while (nodeOffset-- > 1) {
  
        // Update temp2
        temp2 = temp1;
  
        // Update temp1
        temp1 = temp1->next;
    }
  
    // Change the next pointer
    // of the previous node.
    temp2->next = temp1->next;
  
    // Delete the node
    delete temp1;
}
  
// Function to insert a new node.
void Linkedlist::insertNode(int data)
{
    // Create the new Node.
    Node* newNode = new Node(data);
  
    // Assign to head
    if (head == NULL) {
        head = newNode;
        return;
    }
  
    // Traverse till end of list
    Node* temp = head;
    while (temp->next != NULL) {
  
        // Update temp
        temp = temp->next;
    }
  
    // Insert at the last.
    temp->next = newNode;
}
  
// Function to print the
// nodes of the linked list.
void Linkedlist::printList()
{
    Node* temp = head;
  
    // Check for empty list.
    if (head == NULL) {
        cout << "List empty" << endl;
        return;
    }
  
    // Traverse the list.
    while (temp != NULL) {
        cout << temp->data << " ";
        temp = temp->next;
    }
}
  
// Driver Code
int main()
{
    Linkedlist list;
  
    // Inserting nodes
    list.insertNode(1);
    list.insertNode(2);
    list.insertNode(3);
    list.insertNode(4);
  
    cout << "Elements of the list are: ";
  
    // Print the list
    list.printList();
    cout << endl;
  
    // Delete node at position 2.
    list.deleteNode(2);
  
    cout << "Elements of the list are: ";
    list.printList();
    cout << endl;
    return 0;
}
       
       '''
                ),


                _normaltext("\noutput\n"),
                _CodeArea(
'''
       Elements of the list are: 1 2 3 4 
        Elements of the list are: 1 3 4 
'''
                ),
       




         



          ]),
        ),
      ),
    );
  }
}





class Double extends StatefulWidget {
  const Double({super.key});

  @override
  State<Double> createState() => _DoubleState();
}

class _DoubleState extends State<Double> {
  

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
        title: const Text("Double linked list"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Doubly Linked List?"),
                _normaltext(
'''A doubly linked list (DLL) is a special type of linked list in which each node contains a pointer to the previous node as well as the next node of the linked list.\n'''
                ),



                  Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/DLL1.png",
                          ),
                        
                      ),
                    ),
                  ),



                  _boldtext("\n\nCharacteristics of the Doubly Linked List:\n"),
                  _normaltext(
'''
The characteristics of a doubly linked list are as follows:

Dynamic size: The size of a doubly linked list can change dynamically, meaning that nodes can be added or removed as needed.
Two-way navigation: In a doubly linked list, each node contains pointers to both the previous and next elements, allowing for navigation in both forward and backward directions.
Memory overhead: Each node in a doubly linked list requires memory for two pointers (previous and next), in addition to the memory required for the data stored in the node.
\n\n'''),




               _boldtext("Implementation of Double link list\n" ),
                _CodeArea(
'''
#include <iostream>
using namespace std;

// node creation
struct Node {
  int data;
  struct Node* next;
  struct Node* prev;
};

// insert node at the front
void insertFront(struct Node** head, int data) {
  // allocate memory for newNode
  struct Node* newNode = new Node;

  // assign data to newNode
  newNode->data = data;

  // make newNode as a head
  newNode->next = (*head);

  // assign null to prev
  newNode->prev = NULL;

  // previous of head (now head is the second node) is newNode
  if ((*head) != NULL)
    (*head)->prev = newNode;

  // head points to newNode
  (*head) = newNode;
}

// insert a node after a specific node
void insertAfter(struct Node* prev_node, int data) {
  // check if previous node is null
  if (prev_node == NULL) {
    cout << "previous node cannot be null";
    return;
  }

  // allocate memory for newNode
  struct Node* newNode = new Node;

  // assign data to newNode
  newNode->data = data;

  // set next of newNode to next of prev node
  newNode->next = prev_node->next;

  // set next of prev node to newNode
  prev_node->next = newNode;

  // set prev of newNode to the previous node
  newNode->prev = prev_node;

  // set prev of newNode's next to newNode
  if (newNode->next != NULL)
    newNode->next->prev = newNode;
}

// insert a newNode at the end of the list
void insertEnd(struct Node** head, int data) {
  // allocate memory for node
  struct Node* newNode = new Node;

  // assign data to newNode
  newNode->data = data;

  // assign null to next of newNode
  newNode->next = NULL;

  // store the head node temporarily (for later use)
  struct Node* temp = *head;

  // if the linked list is empty, make the newNode as head node
  if (*head == NULL) {
    newNode->prev = NULL;
    *head = newNode;
    return;
  }

  // if the linked list is not empty, traverse to the end of the linked list
  while (temp->next != NULL)
    temp = temp->next;

  // now, the last node of the linked list is temp

  // assign next of the last node (temp) to newNode
  temp->next = newNode;

  // assign prev of newNode to temp
  newNode->prev = temp;
}

// delete a node from the doubly linked list
void deleteNode(struct Node** head, struct Node* del_node) {
  // if head or del is null, deletion is not possible
  if (*head == NULL || del_node == NULL)
    return;

  // if del_node is the head node, point the head pointer to the next of del_node
  if (*head == del_node)
    *head = del_node->next;

  // if del_node is not at the last node, point the prev of node next to del_node to the previous of del_node
  if (del_node->next != NULL)
    del_node->next->prev = del_node->prev;

  // if del_node is not the first node, point the next of the previous node to the next node of del_node
  if (del_node->prev != NULL)
    del_node->prev->next = del_node->next;

  // free the memory of del_node
  free(del_node);
}

// print the doubly linked list
void displayList(struct Node* node) {
  struct Node* last;

  while (node != NULL) {
    cout << node->data << "->";
    last = node;
    node = node->next;
  }
  if (node == NULL)
    cout << "NULL";
}

int main() {
  // initialize an empty node
  struct Node* head = NULL;

  insertEnd(&head, 5);
  insertFront(&head, 1);
  insertFront(&head, 6);
  insertEnd(&head, 9);

  // insert 11 after head
  insertAfter(head, 11);

  // insert 15 after the seond node
  insertAfter(head->next, 15);

  displayList(head);

  // delete the last node
  deleteNode(&head, head->next->next->next->next->next);

  displayList(head);
}
       
       '''
                ),


                _normaltext("\noutput\n"),
                _CodeArea(
'''
       Elements of the list are: 1 2 3 4 
        Elements of the list are: 1 3 4 
'''
                ),
       




         



          ]),
        ),
      ),
    );
  }
}










class Circuler extends StatefulWidget {
  const Circuler({super.key});

  @override
  State<Circuler> createState() => _CirculerState();
}

class _CirculerState extends State<Circuler> {
  

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
        title: const Text("Curculer linked list"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Circular linked list?"),
                _normaltext(
'''The circular linked list is a linked list where all nodes are connected to form a circle. In a circular linked list, the first node and the last node are connected to each other which forms a circle. There is no NULL at the end.\n'''
                ),



                  Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/CircularLinkeList.png",
                          ),
                        
                      ),
                    ),
                  ),


                    _normaltext("\nThere are generally two types of circular linked lists:"),
                  _boldtext("\n\nCircular singly linked list: \n"),
                  _normaltext(
'''

In a circular Singly linked list, the last node of the list contains a pointer to the first node of the list. We traverse the circular singly linked list until we reach the same node where we started. The circular singly linked list has no beginning or end. No null value is present in the next part of any of the nodes.\n\n'''),




               Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/CircularSinglyLinkedList-660x172.png",
                          ),
                        
                      ),
                    ),
                  ),

                  _normaltext(" Representation of Circular singly linked list\n\n\n"),





                _boldtext("\n\nCircular Doubly linked list\n"),
                _normaltext('''Circular Doubly Linked List has properties of both doubly linked list and circular linked list in which two consecutive elements are linked or connected by the previous and next pointer and the last node points to the first node by the next pointer and also the first node points to the last node by the previous pointer.
                '''),



                 
                 Material(
                   
                   
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 300.0,
                      
                        child: const Image(
                        
                          image: AssetImage(
                            "assets/images/Circulardoublylinkedlist-660x155.png",
                          ),
                        
                      ),
                    ),
                  ),













               _boldtext("Implementation of Circuler link list\n" ),
                _CodeArea(
'''
// C++ code to perform circular linked list operations

#include <iostream>

using namespace std;

struct Node {
  int data;
  struct Node* next;
};

struct Node* addToEmpty(struct Node* last, int data) {
  if (last != NULL) return last;

  // allocate memory to the new node
  struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));

  // assign data to the new node
  newNode->data = data;

  // assign last to newNode
  last = newNode;

  // create link to iteself
  last->next = last;

  return last;
}

// add node to the front
struct Node* addFront(struct Node* last, int data) {
  // check if the list is empty
  if (last == NULL) return addToEmpty(last, data);

  // allocate memory to the new node
  struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));

  // add data to the node
  newNode->data = data;

  // store the address of the current first node in the newNode
  newNode->next = last->next;

  // make newNode as head
  last->next = newNode;

  return last;
}

// add node to the end
struct Node* addEnd(struct Node* last, int data) {
  // check if the node is empty
  if (last == NULL) return addToEmpty(last, data);

  // allocate memory to the new node
  struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));

  // add data to the node
  newNode->data = data;

  // store the address of the head node to next of newNode
  newNode->next = last->next;

  // point the current last node to the newNode
  last->next = newNode;

  // make newNode as the last node
  last = newNode;

  return last;
}

// insert node after a specific node
struct Node* addAfter(struct Node* last, int data, int item) {
  // check if the list is empty
  if (last == NULL) return NULL;

  struct Node *newNode, *p;

  p = last->next;
  do {
  // if the item is found, place newNode after it
  if (p->data == item) {
    // allocate memory to the new node
    newNode = (struct Node*)malloc(sizeof(struct Node));

    // add data to the node
    newNode->data = data;

    // make the next of the current node as the next of newNode
    newNode->next = p->next;

    // put newNode to the next of p
    p->next = newNode;

    // if p is the last node, make newNode as the last node
    if (p == last) last = newNode;
    return last;
  }

  p = p->next;
  } while (p != last->next);

  cout << "The given node is not present in the list" << endl;
  return last;
}

// delete a node
void deleteNode(Node** last, int key) {
  // if linked list is empty
  if (*last == NULL) return;

  // if the list contains only a single node
  if ((*last)->data == key && (*last)->next == *last) {
  free(*last);
  *last = NULL;
  return;
  }

  Node *temp = *last, *d;

  // if last is to be deleted
  if ((*last)->data == key) {
  // find the node before the last node
  while (temp->next != *last) temp = temp->next;

  // point temp node to the next of last i.e. first node
  temp->next = (*last)->next;
  free(*last);
  *last = temp->next;
  }

  // travel to the node to be deleted
  while (temp->next != *last && temp->next->data != key) {
  temp = temp->next;
  }

  // if node to be deleted was found
  if (temp->next->data == key) {
  d = temp->next;
  temp->next = d->next;
  free(d);
  }
}

void traverse(struct Node* last) {
  struct Node* p;

  if (last == NULL) {
  cout << "The list is empty" << endl;
  return;
  }

  p = last->next;

  do {
  cout << p->data << " ";
  p = p->next;

  } while (p != last->next);
}

int main() {
  struct Node* last = NULL;

  last = addToEmpty(last, 6);
  last = addEnd(last, 8);
  last = addFront(last, 2);

  last = addAfter(last, 10, 2);

  traverse(last);

  deleteNode(&last, 8);
  cout << endl;

  traverse(last);

  return 0;
}

'''                ),
       




         



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



class dsadvancetopicpage extends StatefulWidget {
  const dsadvancetopicpage({super.key});

  @override
  State<dsadvancetopicpage> createState() => _dsadvancetopicpageState();
}

class _dsadvancetopicpageState extends State<dsadvancetopicpage> {
  


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
                        "  Data structure Advance",
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
             customCard("Tree", "Concepts of tree data structure",
                (context) => OOP(), context),
             customCard("Binary tree", "Concepts of Binary tree",
                (context) => OOP1(), context),
            customCard("Binary Search Tree", "A special tree",
                (context) => Object(), context),
                 customCard("Graph", "Graph theory",
                (context) => Encapsulation(), context),
           
           
               
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
        title: const Text("Tree"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Tree data structure?"),
                _normaltext(
'''\nA tree data structure is a hierarchical structure that is used to represent and organize data in a way that is easy to navigate and search. It is a collection of nodes that are connected by edges and has a hierarchical relationship between the nodes. 

The topmost node of the tree is called the root, and the nodes below it are called the child nodes. Each node can have multiple child nodes, and these child nodes can also have their own child nodes, forming a recursive structure.



This data structure is a specialized method to organize and store data in the computer to be used more effectively. It consists of a central node, structural nodes, and sub-nodes, which are connected via edges. We can also say that tree data structure has roots, branches, and leaves connected with one another.


  '''),




  Material(
child: Container(
// changing from 200 to 150 as to look better
height: 200.0,
child: const Image(
image: AssetImage(
"assets/images/Treedatastructure.png",
),
),
),
),

                    SizedBox(
              height: 20,
            ),
         


      _boldtext("Basic Terminologies In Tree Data Structure:\n\n"),
      _normaltext('''
Parent Node: The node which is a predecessor of a node is called the parent node of that node. {B} is the parent node of {D, E}.

Child Node: The node which is the immediate successor of a node is called the child node of that node. Examples: {D, E} are the child nodes of {B}.

Root Node: The topmost node of a tree or the node which does not have any parent node is called the root node. {A} is the root node of the tree. A non-empty tree must contain exactly one root node and exactly one path from the root to all other nodes of the tree.

Leaf Node or External Node: The nodes which do not have any child nodes are called leaf nodes. {K, L, M, N, O, P} are the leaf nodes of the tree.

Ancestor of a Node: Any predecessor nodes on the path of the root to that node are called Ancestors of that node. {A,B} are the ancestor nodes of the node {E}

Descendant: Any successor node on the path from the leaf node to that node. {E,I} are the descendants of the node {B}.

Sibling: Children of the same parent node are called siblings. {D,E} are called siblings.

Level of a node: The count of edges on the path from the root node to that node. The root node has level 0.

Internal node: A node with at least one child is called Internal Node.

Neighbour of a Node: Parent or child nodes of that node are called neighbors of that node.

Subtree: Any node of the tree along with its descendant.
'''),




 _boldtext("Representation of Tree Data Structure\n"),
 _normaltext('''
      A tree consists of a root, and zero or more subtrees T1, T2, … , Tk such that there is an edge from the root of the tree to the root of each subtree.



         struct Node
     {
          int data;
          struct Node *first_child;
          struct Node *second_child;
          struct Node *third_child;
         .
         .
         .
          struct Node *nth_child;
   };

'''),


Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/recurivetree.png",
),
),
),
),





_boldtext("Implementation of a Tree:- \n"),
_CodeArea('''// C++ program to demonstrate some of the above
// terminologies
#include <bits/stdc++.h>
using namespace std;
// Function to add an edge between vertices x and y
void addEdge(int x, int y, vector<vector<int> >& adj)
{
	adj[x].push_back(y);
	adj[y].push_back(x);
}
// Function to print the parent of each node
void printParents(int node, vector<vector<int> >& adj,
				int parent)
{
	// current node is Root, thus, has no parent
	if (parent == 0)
		cout << node << "->Root" << endl;
	else
		cout << node << "->" << parent << endl;
	// Using DFS
	for (auto cur : adj[node])
		if (cur != parent)
			printParents(cur, adj, node);
}
// Function to print the children of each node
void printChildren(int Root, vector<vector<int> >& adj)
{
	// Queue for the BFS
	queue<int> q;
	// pushing the root
	q.push(Root);
	// visit array to keep track of nodes that have been
	// visited
	int vis[adj.size()] = { 0 };
	// BFS
	while (!q.empty()) {
		int node = q.front();
		q.pop();
		vis[node] = 1;
		cout << node << "-> ";
		for (auto cur : adj[node])
			if (vis[cur] == 0) {
				cout << cur << " ";
				q.push(cur);
			}
		cout << endl;
	}
}
// Function to print the leaf nodes
void printLeafNodes(int Root, vector<vector<int> >& adj)
{
	// Leaf nodes have only one edge and are not the root
	for (int i = 1; i < adj.size(); i++)
		if (adj[i].size() == 1 && i != Root)
			cout << i << " ";
	cout << endl;
}
// Function to print the degrees of each node
void printDegrees(int Root, vector<vector<int> >& adj)
{
	for (int i = 1; i < adj.size(); i++) {
		cout << i << ": ";
		// Root has no parent, thus, its degree is equal to
		// the edges it is connected to
		if (i == Root)
			cout << adj[i].size() << endl;
		else
			cout << adj[i].size() - 1 << endl;
	}
}
// Driver code
int main()
{
	// Number of nodes
	int N = 7, Root = 1;
	// Adjacency list to store the tree
	vector<vector<int> > adj(N + 1, vector<int>());
	// Creating the tree
	addEdge(1, 2, adj);
	addEdge(1, 3, adj);
	addEdge(1, 4, adj);
	addEdge(2, 5, adj);
	addEdge(2, 6, adj);
	addEdge(4, 7, adj);
	// Printing the parents of each node
	cout << "The parents of each node are:" << endl;
	printParents(Root, adj, 0);

	// Printing the children of each node
	cout << "The children of each node are:" << endl;
	printChildren(Root, adj);

	// Printing the leaf nodes in the tree
	cout << "The leaf nodes of the tree are:" << endl;
	printLeafNodes(Root, adj);

	// Printing the degrees of each node
	cout << "The degrees of each node are:" << endl;
	printDegrees(Root, adj);

	return 0;
}


 


'''),



_boldtext("\noutput\n"),
_CodeArea(
  '''The parents of each node are:
1->Root
2->1
5->2
6->2
3->1
4->1
7->4
The children of each node are:
1-> 2 3 4 
2-> 5 6 
3-> 
4-> 7 
5-> 
6-> 
7-> 
The leaf nodes of the tree are:
3 5 6 7 
The degrees of each node are:
1: 3
2: 2
3: 0
4: 1
5: 0
6: 0
7: 0'''
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
        title: const Text("Binary Tree"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Binary tree "),
                _normaltext(
'''
A binary tree is a tree data structure in which each node can have at most two children, which are referred to as the left child and the right child. 


The topmost node in a binary tree is called the root, and the bottom-most nodes are called leaves. A binary tree can be visualized as a hierarchical structure with the root at the top and the leaves at the bottom.

Binary trees have many applications in computer science, including data storage and retrieval, expression evaluation, network routing, and game AI. They can also be used to implement various algorithms such as searching, sorting, and graph algorithms.


  '''),
                    SizedBox(
              height: 20,
            ),



         _boldtext("\nRepresentation of Binary Tree \n"),
         _normaltext(
          ''''Each node in the tree contains the following:

                    1.Data
                    2.Pointer to the left child
                    3.Pointer to the right child\n'''),



Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/binary.png",
),
),
),
),




SizedBox(height: 20,),

            _CodeArea(
              '''

#include <bits/stdc++.h>
using namespace std;
 
class Node {
public:
    int data;
    Node* left;
    Node* right;
    // Val is the key or the value that
    // has to be added to the data part
    Node(int val)
    {
        data = val;
        // Left and right child for node
        // will be initialized to null
        left = NULL;
        right = NULL;
    }
};
 
int main()
{
    /*create root*/
    Node* root = new Node(1);
 
    /* following is the tree after above statement
    1
    / \
    NULL NULL
    */
    root->left = new Node(2);
    root->right = new Node(3);
 
    /* 2 and 3 become left and right children of 1
       1
      / \
     2   3
    / \ / \
    NULL NULL NULL NULL
    */
    root->left->left = new Node(4);
    /* 4 becomes left child of 2
         1
       /   \
      2     3
     / \    / \
    4 NULL NULL NULL
    /   \
    NULL NULL
    */
    return 0;
}
    
    '''
            ),


            SizedBox(height: 20,),
           

         _normaltext(
          '''Tree is a hierarchical data structure. Main uses of trees include maintaining hierarchical data, providing moderate access and insert/delete operations. Binary trees are special cases of tree where every node has at most two children.'''
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
        title: const Text("Bianry Search tree"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Binary Search Tree?"),
                _normaltext(
'''
A Binary Search Tree (BST) is a special type of binary tree in which the left child of a node has a value less than the node’s value and the right child has a value greater than the node’s value. This property is called the BST property and it makes it possible to efficiently search, insert, and delete elements in the tree.

The root of a BST is the node that has the largest value in the left subtree and the smallest value in the right subtree. Each left subtree is a BST with nodes that have smaller values than the root and each right subtree is a BST with nodes that have larger values than the root.The root of a BST is the node that has the largest value in the left subtree and the smallest value in the right subtree. Each left subtree is a BST with nodes that have smaller values than the root and each right subtree is a BST with nodes that have larger values than the root.

Binary Search Tree is a node-based binary tree data structure that has the following properties: 

1.The left subtree of a node contains only nodes with keys lesser than the node’s key.
\n2. The right subtree of a node contains only nodes with keys greater than the node’s key.
\n3.This means everything to the left of the root is less than the value of the root and everything to the right of the root is greater than the value of the root. Due to this performing, a binary search is very easy.
\n4.The left and right subtree each must also be a binary search tree.  


There must be no duplicate nodes(BST may have duplicate values with different handling approaches)


'''               ),



Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/bst-21.png",
),
),
),
),




_boldtext("\n\nHandling approach for Duplicate values in the Binary Search tree\n"),
_normaltext('''
You can not allow the duplicated values at all.

We must follow a consistent process throughout i.e either store duplicate value at the left or store the duplicate value at the right of the root, but be consistent with your approach.

We can keep the counter with the node and if we found the duplicate value, then we can increment the counter


Implementation: '''),


               _CodeArea(
'''
     
// C++ program to insert a node
// in a BST
#include <bits/stdc++.h>
using namespace std;

// Given Node
struct node
{
	int key;
	struct node *left, *right;
};

// Function to create a new BST node
struct node* newNode(int item)
{
	struct node* temp = (struct node*)malloc(
				sizeof(struct node));
	temp->key = item;
	temp->left = temp->right = NULL;
	return temp;
}

// Function to insert a new node with
// given key in BST
struct node* insert(struct node* node, int key)
{
	
	// If the tree is empty, return a new node
	if (node == NULL)
		return newNode(key);

	// Otherwise, recur down the tree
	if (key < node->key)
	{
		node->left = insert(node->left, key);
	}
	else if (key > node->key)
	{
		node->right = insert(node->right, key);
	}

	// Return the node pointer
	return node;
}

// Function to do inorder traversal of BST
void inorder(struct node* root)
{
	if (root != NULL)
	{
		inorder(root->left);
		cout << root->key << " ";
		inorder(root->right);
	}
}

// Driver Code
int main()
{
	
	/* Let us create following BST
			50
		/	 \
		30	 70
		/ \ / \
	20 40 60 80
*/
	struct node* root = NULL;

	// Inserting value 50
	root = insert(root, 50);

	// Inserting value 30
	insert(root, 30);

	// Inserting value 20
	insert(root, 20);

	// Inserting value 40
	insert(root, 40);

	// Inserting value 70
	insert(root, 70);

	// Inserting value 60
	insert(root, 60);

	// Inserting value 80
	insert(root, 80);

	// Print the BST
	inorder(root);

	return 0;
}

// This code is contributed by shubhamsingh10



'''
                ),




               SizedBox(height: 20,),

               _boldtext("output\n"),
               _CodeArea(
'''

 20 30 40 50 60 70 80
 
 '''
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
        title: const Text("Graph"),
        backgroundColor: Colors.indigoAccent,
      ),



      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child:
               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                _boldtext("What is Graph Data Structure?"),
                _normaltext(
'''
A Graph is a non-linear data structure consisting of vertices and edges. The vertices are sometimes also referred to as nodes and the edges are lines or arcs that connect any two nodes in the graph. More formally a Graph is composed of a set of vertices( V ) and a set of edges( E ). The graph is denoted by G(E, V) \n\n'''),






Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/graph18.jpg",
),
),
),
),




_boldtext("\n\nComponents of a Graph\n"),
_normaltext('''
Vertices: Vertices are the fundamental units of the graph. Sometimes, vertices are also known as vertex or nodes. Every node/vertex can be labeled or unlabelled.

\nEdges: Edges are drawn or used to connect two nodes of the graph. It can be ordered pair of nodes in a directed graph. Edges can connect any two nodes in any possible way. There are no rules. Sometimes, edges are also known as arcs. Every edge can be labeled/unlabelled.




Graphs are used to solve many real-life problems. Graphs are used to represent networks. The networks may include paths in a city or telephone network or circuit network. Graphs are also used in social networks like linkedIn, Facebook. For example, in Facebook, each person is represented with a vertex(or node). Each node is a structure and contains information like person id, name, gender, locale etc.'''),
             
             
             
             


   _boldtext("\n\nTypes Of Graph\n") , 
   _normaltext('''
1. Null Graph
A graph is known as a null graph if there are no edges in the graph.

2. Trivial Graph
Graph having only a single vertex, it is also the smallest graph possible.\n'''),   




 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/null_graph_trivial.jpg",
),
),
),
),     




 _normaltext('''
3. Undirected Graph
A graph in which edges do not have any direction. That is the nodes are unordered pairs in the definition of every edge. 

4. Directed Graph
A graph in which edge has direction. That is the nodes are ordered pairs in the definition of every edge.
 
 \n'''),   




 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/directed.jpg",
),
),
),
),  
             
             
             


_normaltext('''\n
5. Connected Graph
The graph in which from one node we can visit any other node in the graph is known as a connected graph. 

6. Disconnected Graph
The graph in which at least one node is not reachable from a node is known as a disconnected graph.\n'''),   




 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/connected1.jpg",
),
),
),
),  








_normaltext('''\n
7. Regular Graph
The graph in which the degree of every vertex is equal to K is called K regular graph.

8. Complete Graph
The graph in which from each node there is an edge to each other node.

\n'''),   




 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/regular.jpg",
),
),
),
),  




_normaltext('''\n
9. Cycle Graph
The graph in which the graph is a cycle in itself, the degree of each vertex is 2. 

10. Cyclic Graph
A graph containing at least one cycle is known as a Cyclic graph.

\n'''),   




 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/cyclic.jpg",
),
),
),
), 
             
                    



_boldtext("\n\nRepresentation of Graphs\n"),
_normaltext('''There are two ways to store a graph:

       1.Adjacency Matrix
       2.Adjacency List


\n'''
),



_boldtext("\nAdjacency Matrix"),
_normaltext('''In this method, the graph is stored in the form of the 2D matrix where rows and columns denote vertices. Each entry in the matrix represents the weight of the edge between those vertices. '''),

  

 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/adjacency_mat1.jpg",
),
),
),
), 
             




               _boldtext("\nAdjacet matrix graph reapresentation\n")   , 
               _normaltext('''Algorith or Approach :
We follow the below pattern to use the adjacency matrix in code:

In the case of an undirected graph, we need to show that there is an edge from vertex i to vertex j and vice versa. In code, we assign adj[i][j] = 1  and adj[j][i] = 1.
In the case of a directed graph, if there is an edge from vertex i to vertex j then we just assign adj[i][j]=1.\n
''') ,      
                _CodeArea(
'''      
#include <bits/stdc++.h>
using namespace std;
 
int main()
{
    // n is the number of vertices
    // m is the number of edges
    int n, m;
    cin >> n >> m;
    int adjMat[n + 1][n + 1];
    for (int i = 0; i < m; i++) {
        int u, v;
        cin >> u >> v;
        adjMat[u][v] = 1;
        adjMat[v][u] = 1;
        // for a directed graph with an edge pointing from u
        // to v,we just assign adjMat[u][v] as 1
    }
 
    return 0;
}

      
     '''
),
     

 
_boldtext("\n\nAdjacency List"),
_normaltext('''This graph is represented as a collection of linked lists. There is an array of pointer which points to the edges connected to that vertex. '''),

  

 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/adjacency_list.jpg",
),
),
),
), 
      



               _boldtext("\nAdjacet List graph reapresentation\n")   , 
               _normaltext('''Consider the following graph ''') , 
               


 
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/undirectedgraph.png",
),
),
),
), 

_normaltext('''Following is the adjacency list representation of the above graph.'''),
  
Material(
child: Container(
// changing from 200 to 150 as to look better
height: 300.0,
child: const Image(
image: AssetImage(
"assets/images/listadjacency.png",
),
),
),
),     


                _CodeArea(
'''      
// A simple representation of graph using STL
#include <bits/stdc++.h>
using namespace std;

// A utility function to add an edge in an
// undirected graph.
void addEdge(vector<int> adj[], int u, int v)
{
	adj[u].push_back(v);
	adj[v].push_back(u);
}

// A utility function to print the adjacency list
// representation of graph
void printGraph(vector<int> adj[], int V)
{
	for (int v = 0; v < V; ++v) {
		cout << "Adjacency list of vertex " << v
			<< "head ";
		for (auto x : adj[v])
			cout << "-> " << x;
		cout << endl;
	}
}

// Driver code
int main()
{
	int V = 5;
	vector<int> adj[V];
	addEdge(adj, 0, 1);
	addEdge(adj, 0, 4);
	addEdge(adj, 1, 2);
	addEdge(adj, 1, 3);
	addEdge(adj, 1, 4);
	addEdge(adj, 2, 3);
	addEdge(adj, 3, 4);
	printGraph(adj, V);
	return 0;
}

      
     '''
),



_boldtext("\nOutput\n"),
_CodeArea(
  '''
Adjacency list of vertex 0
 head -> 1-> 4

 Adjacency list of vertex 1
 head -> 0-> 2-> 3-> 4

 Adjacency list of vertex 2
 head -> 1-> 3

 Adjacency list of vertex 3
 head -> 1-> 2-> 4

 Adjacency list of vertex 4
 head -> 0-> 1-> 3'''
)
     

 
   
         



          ]),
        ),
      ),
    );
  }
}



























