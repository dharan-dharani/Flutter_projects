import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping/Services/signupAuth.dart';
import 'package:shopping/forgetpassword.dart';
import 'package:shopping/homescreen.dart';
import 'package:shopping/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  FormPage createState() => FormPage();
}

class FormPage extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final SignupAuth auth=SignupAuth();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  void signin() async {
    String email=_emailcontroller.text.trim();
    String password=_passwordcontroller.text.trim();
    if (_formkey.currentState!.validate()) {
      User? user=await auth.signin(email,password);
      if(user!=null)
      {
        print('Successful');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
      }
      else{
        print('some error');
      }
    }
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
                    'Signin',
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
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgetpassword()));
                      }, child: const Text('Forget Password?'))),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      signin();

                    },
                    child: const Text(
                      'Signin',
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
