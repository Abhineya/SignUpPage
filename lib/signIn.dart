import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                    height: 250,
                    width: 250,
                    child: Image(
                      image: AssetImage('assets/signin.png'),
                      fit: BoxFit.cover,
                    )),
                Text(
                  'Welcome back!',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'You\'ve been missed',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 117, 114, 114)),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    GoogleSignIn().signIn();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/google.png')),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sign in with Google',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      height: 50,
                      width: 320,
                      color: Color.fromARGB(255, 226, 225, 225),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 2,
                      width: 130,
                      color: Color.fromARGB(255, 226, 225, 225),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 117, 114, 114)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 2,
                      width: 130,
                      color: Color.fromARGB(255, 226, 225, 225),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 226, 225, 225),
                            width: 2,
                          ),
                        ),
                        hintText: 'Enter your email'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 226, 225, 225),
                            width: 2,
                          ),
                        ),
                        hintText: 'Enter password'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Center(
                        child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    height: 50,
                    width: 320,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account ? ',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 117, 114, 114)),
                    children: const <TextSpan>[
                      TextSpan(
                          text: ' Sign up here',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 122, 52, 214))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
