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
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_image.png',
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter User Name",
                          label: Text('User Name')),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter User Name';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      // obscuringCharacter: '*',
                      decoration: const InputDecoration(
                          hintText: "Enter Password", label: Text('Password')),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter User Name';
                        } else if (value.length < 6) {
                          return 'Password Should be atleast 6 digit';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
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
      ),
    );
  }
}
