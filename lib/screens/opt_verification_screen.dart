import 'package:flutter/material.dart';
import 'package:local_shop/screens/forgot_password_screen.dart';
import 'package:local_shop/screens/new_password_screen.dart';

class OPTVerificationScreen extends StatelessWidget {
  const OPTVerificationScreen({super.key});

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
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPasswordScreen()));
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: Image.asset('images/photo-vervication.png'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (var i = 0; i < 5; i++)
                        const Expanded(
                            child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ))
                    ],
                  ),
                  //const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: FilledButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewPasswordScreen(),
                            ));
                      },
                      style: Theme.of(context).filledButtonTheme.style,
                      child:
                          const Text('Verify', style: TextStyle(fontSize: 17)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don`t Received code ?',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.blueAccent,
                                  ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
