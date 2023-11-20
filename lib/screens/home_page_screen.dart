import 'package:flutter/material.dart';
import 'package:local_shop/screens/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 110, 5, 20),
            child: Image.asset('images/photo-main.jpg'),
          ),
          Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: Row(children: [
                      Image.asset('images/logo-localshop.png',
                          width: 35, height: 40),
                      Text(
                        'Local',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'shop',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                    child: Text(
                      'Everything you need is in one place',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: Text(
                      'Find your daily necessity at Brand. The Word`s largest fashion'
                      ' e-commerce has arrived in a mobile shop now!',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: FilledButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      style: Theme.of(context).filledButtonTheme.style,
                      child: const Text('Login'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: FilledButton(
                      onPressed: () {},
                      style:
                          Theme.of(context).filledButtonTheme.style!.copyWith(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                side: MaterialStateProperty.all(
                                    const BorderSide(color: Colors.black)),
                              ),
                      child: const Text('Register'),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
