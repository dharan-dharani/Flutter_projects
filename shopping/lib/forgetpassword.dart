import 'package:flutter/material.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final fpass = GlobalKey<FormState>();
  final TextEditingController _forgetpasswordcontroller = TextEditingController();
  @override
  void dispose() {
    _forgetpasswordcontroller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Forget Password', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('Email Verificationn'),
          TextFormField(
          controller: _forgetpasswordcontroller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please Enter your FirstName";
            }
            return null;
          },
            decoration: InputDecoration(
                label: const Text(
                  'Email Verification ',
                ),
                floatingLabelBehavior:
                FloatingLabelBehavior.auto,
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.circular(15))),
          ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                if(fpass.currentState!.validate())
                  {

                  }

              },
              child: const Text(
                'Send Email Verification',
              ),
            ),

          ],
        ),
      ),
    );
  }
}
