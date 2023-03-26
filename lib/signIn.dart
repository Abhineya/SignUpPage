import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 300,
                  width: 300,
                  child: Image(
                    image: AssetImage('assets/signin.png'),
                    fit: BoxFit.cover,
                  )),
              Text(
                'Welcome back!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignInScreen();
                  }));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/google.png')),
                        SizedBox(width: 10,),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    height: 60,
                    width: 350,
                    color: Color.fromARGB(255, 226, 225, 225),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
