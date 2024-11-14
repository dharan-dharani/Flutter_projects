import 'package:firebase_auth/firebase_auth.dart';

class SignupAuth{
  Future<User?> signup(String email,String password) async{
    //await FirebaseAuth.instance.createUserWithEmailAndPassword
    // (email: email, password: password);

    try{
      UserCredential credential=await FirebaseAuth.instance.createUserWithEmailAndPassword
       (email: email, password: password);
      return credential.user;
    }
        catch(e){
      print('some error');
        }
        return null;
  }

  Future<User?> signin(String email,String password) async{


    try{
      UserCredential credential=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print('some error');
    }
    return null;
  }
}