import 'package:flutter/material.dart';
import 'package:signup/signIn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                height: 70,
              ),
              Container(
                  height: 300,
                  width: 300,
                  child: Image(
                    image: AssetImage('assets/welcome.png'),
                    fit: BoxFit.cover,
                  )),
              Text(
                'Growing your',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              RichText(
                text: TextSpan(
                  text: 'business is ',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'easier!',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 122, 52, 214))),
                  ],
                ),
              ),
              Text(
                'then you think',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sign  up  takes  only  2  minutes',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 117, 114, 114)),
              ),
              SizedBox(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  height: 60,
                  width: 350,
                  color: Colors.black,
                ),
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
                    child: Center(
                        child: Text(
                      'Sign in',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
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
