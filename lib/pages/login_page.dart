import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
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
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Enter User Name", label: Text('User Name')),
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style:
                        TextButton.styleFrom(minimumSize: const Size(150, 40)),
                    child: const Text('Login'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
