import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var _email='';
  var _password='';



  




 Notuser()
 {

     
   showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: Colors.indigoAccent,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '               Login failed',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white

                    
                  ),
                ),
                const SizedBox(height: 16),
                
                
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
























  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/signup');
      },
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loginUser(String email, String password) async {
    try {

      //ata user id dibe
      UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // User successfully authenticated
      User? user = userCredential.user;
    

      Navigator.pushNamed(context, '/course');

      // Perform any additional actions after successful login
      // For example, navigate to the home screen.
    } catch (e) {
      // Error occurred during login
      Notuser();

      // Handle the error based on the Firebase Auth error codes
      // For example, show an error message to the user.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-learning & Quiz App"),
        backgroundColor: const Color.fromARGB(255, 60, 33, 241),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 71, 7, 173),
          child: Form(
            key: _key,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: SizedBox(
                    height: 90,
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 36,
                            fontFamily: AutofillHints.givenName,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 250, 251, 252),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ),
                    maxLength: 30,
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(
                          color: Color.fromARGB(255, 253, 252, 251)),
                      labelText: "E-mail",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                      hintText: "user@gmail.com",
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Colors.white,
                    ),
                      
                      onChanged: (value){
                         _email=value;
                      },

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your email";
                      } else if (isValidEmail(value) == false) {
                        return "Invalid email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),






                
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 250, 251, 252),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ),


                    maxLength: 8,
                    cursorColor: Colors.white,

                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(
                          color: Color.fromARGB(255, 253, 252, 251)),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                      hintText: "user password",
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.white,
                    ),

                    onChanged: (value){
                       _password=value;
                    },


                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password!';
                      } else if (value.length < 8) {
                        return "Password must be 8 characters";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        // Form validation successful, proceed with login
                        String email = _email;// Get the entered email from TextFormField
                            String password = _password;// Get the entered password from TextFormField
                                loginUser(email, password);
                      }
                    },
                    child: const Text("Sign in"),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _buildSignupBtn(),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: SizedBox(
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





bool isValidEmail(String email) {
  const pattern = r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$';
  final regExp = RegExp(pattern);

  // Check if the email matches the pattern
  if (!regExp.hasMatch(email)) {
    return false;
  }

  return true;
}















//signup class

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreen();
}

class _RegistrationScreen extends State<RegistrationScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  var _email = '';
  var _password = '';
  var _repassword = '';

  //function
  void registerUser() {
    // Use Firebase Auth to create a new user with email and password
    // Note: Make sure you have initialized Firebase before calling this method
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
          email: _email,
          password: _password,
        )
        .then((userCredential) {})
        .catchError((error) {
      // Registration failed
      // Handle the error here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Create Account"),
            backgroundColor: const Color.fromARGB(255, 60, 33, 241)),



        body: SingleChildScrollView(
          child: Container(
            color: const Color.fromARGB(255, 71, 7, 173),

            child: Form(
                key: _key,

                child: Column(

                  children: [


                    const SizedBox(
                      height: 40,
                    ),



                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: SizedBox(
                          height: 90,
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 36,
                                  fontFamily: AutofillHints.givenName,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )),
                    ),





                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 250, 251, 252),
                            fontSize: 18,
                            fontFamily: 'Roboto',
                          ),
                          maxLength: 30,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Color.fromARGB(255, 253, 252, 251)),
                            labelText: "E-mail",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                            hintText: "user@gmai.com",
                            prefixIcon: Icon(Icons.email),
                            prefixIconColor: Colors.white,
                          ),
                          onChanged: (value) {
                            _email = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "input e-mail user name";
                            } else if (isValidEmail(value) == false) {
                              return "invalid e-mail";
                            } else {
                              return null;
                            }
                          },
                        )),







                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 250, 251, 252),
                            fontSize: 18,
                            fontFamily: 'Roboto',
                          ),
                          maxLength: 8,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Color.fromARGB(255, 253, 252, 251)),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                            hintText: "user password",
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.white,
                          ),
                          onChanged: (value) {
                            _password = value;
                          },
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid password!';
                            } else if (value.length < 8) {
                              return "password must be 8 character";
                            } else {
                              return null;
                            }
                          },
                        )),






                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 250, 251, 252),
                            fontSize: 18,
                            fontFamily: 'Roboto',
                          ),
                          maxLength: 8,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Color.fromARGB(255, 253, 252, 251)),
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                            hintText: "retype password",
                            prefixIcon: Icon(Icons.lock),
                            prefixIconColor: Colors.white,
                          ),
                          onChanged: (value) {
                            _repassword = value;
                          },
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid password!';
                            } else if (value.length < 8) {
                              return "password must be 8 character";
                            } else if (_password != _repassword) {
                              return "password not match";
                            } else {
                              return null;
                            }
                          },
                        )),





                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              registerUser();
                              Navigator.pushNamed(context, '/course');
                            }
                          },
                          child: const Text("Sign Up"),
                        )),



                    const Padding(
                      padding: EdgeInsets.all(15),
                      
                      child: SizedBox(
                        height: 100,
                        
                        
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}










