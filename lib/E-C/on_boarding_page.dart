import 'package:aplikasi_hadeh/login_page.dart';
import 'package:aplikasi_hadeh/register_page.dart';
// import 'package:aplikasi_hadeh/table.dart';
import 'package:flutter/material.dart';

class Myboard extends StatelessWidget {
  const Myboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // textTheme: GoogleFonts.interTextTheme(),
          ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  '../Assets/people.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Buy',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 73, 144, 1.0),
                        ),
                      ),
                      TextSpan(text: ' And '),
                      TextSpan(
                        text: 'Sell',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 73, 144, 1.0),
                        ),
                      ),
                      TextSpan(text: ' Anything Faster With The Logic App'),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text('Massive discounts and offers when you shop.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    )),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 80, bottom: 5, left: 20, right: 20),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(45, 73, 144, 1.0),
                        shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        minimumSize: const Size(340, 55)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromRGBO(45, 73, 144, 1.0)),
                        shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        minimumSize: const Size(340, 55)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(45, 73, 144, 1.0)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
