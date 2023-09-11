// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:massenger_app/screens/register_screen.dart';
import 'package:massenger_app/screens/signin_screen.dart';
import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcomescreen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset(
                    'images/logo.png',
                  ),
                ),
                const Text(
                  'MessageMe',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SignInScreen.screenRoute,
                );
              },
              color: Colors.yellow[900]!,
              title: 'Sign In',
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RegisterScreen.screenRoute,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
