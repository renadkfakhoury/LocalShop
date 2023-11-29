import 'package:flutter/material.dart';
import 'package:local_shop/screens/forgot_password_screen.dart';
import 'package:local_shop/screens/home_page_screen.dart';
import 'package:local_shop/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordShow = true;
  String _helperTextEmail =
      'This is the email address you will use to sign in to your account.';
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  bool _validateEmail = false;
  bool _validatePassword = false;

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
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 10),
            Center(
              child: Image.asset(
                'images/logo-localshop.png',
                width: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Login to continue using the app',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall,
                    keyboardType: TextInputType.emailAddress,
                    controller: _controllerEmail,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: 'Enter your Email',
                      helperText: _helperTextEmail,
                      errorText: _validateEmail ? "Value Can't Be Empty" : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        if (value.isEmpty) {
                          _helperTextEmail = 'Please enter your email address';
                        } else if (!RegExp(r'^.+@.+\..+$').hasMatch(value)) {
                          _helperTextEmail =
                              'Please enter a valid email address';
                        } else {
                          _helperTextEmail = '';
                        }
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address';
                      } else if (!RegExp(r'^.+@.+\..+$').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _passwordShow,
                    controller: _controllerPassword,
                    decoration: InputDecoration(
                      errorText:
                          _validatePassword ? "Value Can't Be Empty" : null,
                      suffixIcon: IconButton(
                        icon: _passwordShow == true
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _passwordShow = !_passwordShow;
                          });
                        },
                      ),
                      fillColor: Colors.grey,
                      hintText: 'Enter your Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text(
                          'Forget Password? ',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                    child: FilledButton(
                      onPressed: () {
                        setState(() {
                          _validatePassword = _controllerPassword.text.isEmpty;
                          _validateEmail = _controllerEmail.text.isEmpty;
                        });
                      },
                      style: Theme.of(context).filledButtonTheme.style,
                      child: const Text('Login',style: TextStyle(fontSize: 17)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Or Login With',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.facebook_outlined,
                          size: 50,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.g_mobiledata,
                          size: 80,
                          color: Colors.orange,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.apple,
                          size: 50,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don`t Have an account ?',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ));
                        },
                        child: Text(
                          'Register',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.blueAccent,
                                  ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
