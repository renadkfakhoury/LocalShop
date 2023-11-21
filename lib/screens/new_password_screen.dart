import 'package:flutter/material.dart';
import 'package:local_shop/screens/opt_verification_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
                      builder: (context) => const OPTVerificationScreen()));
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create New Password',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Your New Password must be required from those previously used',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye),
                        onPressed: () {},
                      ),
                      fillColor: Colors.grey,
                      hintText: 'Enter your Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Confirm Password',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye),
                        onPressed: () {},
                      ),
                      fillColor: Colors.grey,
                      hintText: 'Enter Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: FilledButton(
                      onPressed: () {},
                      style: Theme.of(context).filledButtonTheme.style,
                      child: const Text('Reset Password'),
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
