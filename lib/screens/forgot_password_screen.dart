import 'package:flutter/material.dart';
import 'package:local_shop/screens/login_screen.dart';
import 'package:local_shop/screens/opt_verification_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.all(7),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: Image.asset('images/photo-forgat.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forgot Password',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Don`t worry! it please enter the email address linked with '
                    'your account.',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: 'Enter your Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: FilledButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OPTVerificationScreen()));
                      },
                      style: Theme.of(context).filledButtonTheme.style,
                      child: const Text('Send Code'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
