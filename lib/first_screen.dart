import 'package:flutter/material.dart';
import 'package:login_practice/sign_up_screen.dart';
import 'package:login_practice/signin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(238, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Image(
              color: Color.fromARGB(255, 235, 27, 12),
              image: AssetImage('Assets/SecondLogo.png'),
              height: 100,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Say Hello To Your New App!',
            style: TextStyle(
              color: Color.fromARGB(255, 235, 27, 12),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'You have just saved a week of development and headches',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Rubik Regular',
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ));
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 235, 27, 12),
              ),
              // padding: const EdgeInsets.all(18),
              child: const Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                      fontFamily: 'Rubik medium',
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ));
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white),
              // padding: const EdgeInsets.all(18),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: 'Rubik medium',
                      color: Color.fromARGB(154, 102, 105, 105),
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
