
import 'package:firebase_auth/firebase_auth.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AuthService{
static FirebaseAuth _auth = FirebaseAuth.instance;

 
 //Email/password Register
 Future<User?> register(String email, String password) async{
  try{
    final UserCredential userCredential =
     await _auth.createUserWithEmailAndPassword(
      email: email.trim(), 
      password: password.trim(),
      );
      return userCredential.user; //return firebase user if successed
  } on FirebaseAuthException catch (e){
    print("FirebaseAuthException: ${e.code} - ${e.message}");
    return null;
  } catch(e){
    print("Error: $e");
    return null;
  }

 }


 //Email/Password Login
  Future<String?> loginWithEmail(String email, String password, bool remember) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(email: email, password: password);

      // Remember Me
      if (remember) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("userId", credential.user!.uid);
      }

      return null; // null means no error, success
    } on FirebaseAuthException catch (e) {
      // Firebase validation errors
      if (e.code == 'user-not-found') return "No user found with this email";
      if (e.code == 'wrong-password') return "Incorrect password";
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  //forgect pasword
  Future<String?> resetPassword(String email) async {
    try {
    await _auth.sendPasswordResetEmail(email: email);
    return null;
  } catch (e) {
    return e.toString();
  }
}

}