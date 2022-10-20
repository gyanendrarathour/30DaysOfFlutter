import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'images/login_image.png',
              fit: BoxFit.cover,
              height: 150,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        hintText: "Enter User Name", label: Text('User Name')),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  const TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: "Enter Password", label: Text('Password')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 2));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 2),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                          color: Colors.deepPurple),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style:
                  //       TextButton.styleFrom(minimumSize: const Size(150, 40)),
                  //   child: const Text('Login'),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
