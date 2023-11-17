import 'package:flutter/material.dart';
import 'package:login_practice/first_screen.dart';

class SwapingScreen extends StatelessWidget {
  const SwapingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
// Swiping in right direction.
        if (details.delta.dx > 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        }

// Swiping in left direction.
        if (details.delta.dx < 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ));
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 137, 13, 5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              height: 150,
            ),
            Image(
              height: 150,
              color: Colors.white,
              image: AssetImage(
                'Assets/FirstLogo.png',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Flutter Onboarding',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Build your onbording flow in seconds.',
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 173, 173),
                  fontSize: 15,
                ),
              ),
            ), /*
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                child: Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 137, 13, 5),
                  ),
                  padding: const EdgeInsets.all(18),
                  child: const Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontFamily: 'Rubik medium',
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                )),*/
          ],
        ),
      ),
    );
  }
}
