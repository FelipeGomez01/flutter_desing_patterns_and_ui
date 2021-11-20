import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3E79F8),
              Color(0xFF69F0C5)
            ],
            stops: [
              0.0,
              0.85
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight
          )
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.3),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () => print('clic'),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'Sign in Your Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Icon(
                Icons.monetization_on_outlined,
                size: 240,
                color: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 320,
                //height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    filled: true,
                    hintText: 'USERNAME',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 320,
                //height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    filled: true,
                    hintText: 'PASSWORD',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => print('clic'),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                    color: Color(0xFF3E79F8),
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  minimumSize: const Size(320,63)
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 19
                    ),
                  ),
                  TextButton(
                    onPressed: () => print('clic'),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors. white.withOpacity(0.7),
                        fontSize: 17
                      ),
                    )
                  )
                ],
              )
            ]
          )
        )
      )
    );
  }
}

