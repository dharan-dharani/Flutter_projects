import 'package:flutter/material.dart';
import 'package:shopping/homescreen.dart';
import 'package:shopping/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  FormPage createState() => FormPage();
}

class FormPage extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Shopping',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                        label: const Text(
                          'Email or Username',
                        ),
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(15))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _passwordcontroller,
                    decoration: InputDecoration(
                        label: const Text(
                          'Password',
                        ),
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(15))),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                    },
                    child: const Text(
                      'Login',
                    ),
                  ),
                 const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const  Text("Don't have a account?"),
                     const  SizedBox(width: 10),
                      Hero(
                        tag: 'dash',
                        child: TextButton(
                          child: const Text(
                            'Signup',
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SignUp()),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
