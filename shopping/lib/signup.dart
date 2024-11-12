import 'package:flutter/material.dart';
import 'package:shopping/login.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  Signup createState() => Signup();
}

class Signup extends State<SignUp> {
  final _checker = GlobalKey<FormState>();
  final TextEditingController _fcontroller = TextEditingController();
  final TextEditingController _lcontroller = TextEditingController();
  final TextEditingController _econtroller = TextEditingController();
  final TextEditingController _pcontroller = TextEditingController();

  @override
  void dispose() {
    _fcontroller.dispose();
    _lcontroller.dispose();
    _econtroller.dispose();
    _pcontroller.dispose();
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
            key: _checker,
            child: Column(
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _fcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your FirstName";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: const Text(
                        'Firstname',
                      ),
                      floatingLabelBehavior:
                      FloatingLabelBehavior.auto,
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(15))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _lcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your LastName";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: const Text(
                        'Lastname',
                      ),
                      floatingLabelBehavior:
                      FloatingLabelBehavior.auto,
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(15))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your EmailAddress";
                    }
                    return null;
                  },
                  controller: _econtroller,
                  decoration: InputDecoration(
                      label: const Text(
                        'Email',
                      ),
                      floatingLabelBehavior:
                      FloatingLabelBehavior.auto,
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(15))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter your Password";
                    }
                    return null;
                  },
                  controller: _pcontroller,
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
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    //validationfields();
                  },
                  child: const Text(
                    'Signup',
                  ),
                ),
                const SizedBox(height: 20),
                Hero(
                  tag: 'dash',
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login( )),
                        );
                      },
                      child: const Text('Back to login Page')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
